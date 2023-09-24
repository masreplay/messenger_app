import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/models/message_model.dart';
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
      event.when(
        sendText: (value) async {
          final data = await _repository.sendTextMessage(value);
          emit(DiscussionState.messageSent(data));
        },
        sendImage: (value) async {
          final data = await _repository.sendImageMessage(value);
          emit(DiscussionState.messageSent(data));
        },
        sendSticker: (value) async {
          final data = await _repository.sendStickerMessage(value);
          emit(DiscussionState.messageSent(data));
        },
        deleteMessage: (message) async {
          await _repository.deleteMessage(message.id);

          emit(DiscussionState.messageDeleted(message));
        },
      );
    } catch (e, s) {
      emit(DiscussionState.failure(e, s));
    }
  }

  void sendStickerMessage(Sticker value) {
    debugPrint('sendStickerMessage');
    add(DiscussionEvent.sendSticker(value));
  }

  void sendTextMessage(String text) {
    add(DiscussionEvent.sendText(text));
  }

  void sendImageMessage(File file) {
    add(DiscussionEvent.sendImage(file));
  }

  void deleteMessage(Message message) {
    add(DiscussionEvent.deleteMessage(message));
  }
}
