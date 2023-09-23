import 'dart:collection';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/src/main/discussions/discussions_repo.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';

part 'discussion_cubit.freezed.dart';

/// It's also could be implemented with sealed classes
///
/// Example:
/// ```dart
/// sealed class DiscussionEvent {
///   const DiscussionEvent();
/// }
///
/// class SendImageEvent extends DiscussionEvent {
///   final File file;
///
///   const SendImageEvent(this.file);
/// }
///
/// class SendTextEvent extends DiscussionEvent {
///   final String text;
///
///   const SendTextEvent(this.text);
/// }
///
/// class SendStickerEvent extends DiscussionEvent {
///   final Sticker sticker;
///
///   const SendStickerEvent(this.sticker);
/// }
/// ```

@freezed
class DiscussionEvent with _$DiscussionEvent {
  const factory DiscussionEvent.image(File file) = _DiscussionEventImage;
  const factory DiscussionEvent.text(String text) = _DiscussionEventText;
  const factory DiscussionEvent.sticker(Sticker sticker) =
      _DiscussionEventSticker;
}

@freezed
class DiscussionState with _$DiscussionState {
  const factory DiscussionState.initial() = _DiscussionStateInitial;
  const factory DiscussionState.sendingInProgress() = _SendingInProgress;
  const factory DiscussionState.messageSent(Message message) = _MessageSent;
  const factory DiscussionState.failure(Object? error, StackTrace stackTrace) =
      _DiscussionStateFailure;
}

@injectable
class DiscussionCubit extends Bloc<DiscussionEvent, DiscussionState> {
  @appImpl
  final DiscussionsRepository _repository;

  final Queue<DiscussionEvent> _queue = Queue<DiscussionEvent>();
  bool _isSending = false;

  DiscussionCubit(this._repository) : super(const DiscussionState.initial()) {
    on<DiscussionEvent>(_mapEventToState);
  }

  Stream<DiscussionState> _mapEventToState(
    DiscussionEvent event,
    Emitter<DiscussionState> emit,
  ) async* {
    _queue.add(event);
    if (!_isSending) {
      _isSending = true;
      while (_queue.isNotEmpty) {
        final event = _queue.first;
        yield const DiscussionState.sendingInProgress();
        try {
          final message = await event.when(
            image: _repository.sendImageMessage,
            text: _repository.sendTextMessage,
            sticker: _repository.sendStickerMessage,
          );
          _queue.removeFirst();
          yield DiscussionState.messageSent(message);
        } catch (e, stackTrace) {
          yield DiscussionState.failure(e, stackTrace);
        }
      }
      _isSending = false;
    }
  }

  void sendStickerMessage(Sticker value) {
    add(DiscussionEvent.sticker(value));
  }

  void sendTextMessage(String text) {
    add(DiscussionEvent.text(text));
  }

  void sendImageMessage(File file) {
    add(DiscussionEvent.image(file));
  }
}
