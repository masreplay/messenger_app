import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/models/sticker.dart';
import 'package:messenger_app/data/repo/discussions_repo.dart';

import 'discussion_event.dart';
import 'discussion_state.dart';

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

@injectable
class DiscussionCubit extends Bloc<DiscussionEvent, DiscussionState> {
  @appImpl
  final DiscussionsRepository _repository;

  DiscussionCubit(this._repository) : super(const DiscussionState.initial()) {
    on<DiscussionEvent>(_mapEventToState);
  }

  void _mapEventToState(
    DiscussionEvent event,
    Emitter<DiscussionState> emit,
  ) async {
    emit(const DiscussionState.sendingInProgress());
    try {
      final message = await event.when(
        text: _repository.sendTextMessage,
        image: _repository.sendImageMessage,
        sticker: _repository.sendStickerMessage,
      );
      emit(DiscussionState.messageSent(message));
    } catch (e, s) {
      emit(DiscussionState.failure(e, s));
    }
  }

  void sendStickerMessage(Sticker value) {
    debugPrint('sendStickerMessage');
    add(DiscussionEvent.sticker(value));
  }

  void sendTextMessage(String text) {
    add(DiscussionEvent.text(text));
  }

  void sendImageMessage(File file) {
    add(DiscussionEvent.image(file));
  }
}
