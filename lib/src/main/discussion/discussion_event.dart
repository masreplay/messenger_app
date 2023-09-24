import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/models/message_model.dart';
import 'package:messenger_app/data/models/sticker.dart';

part 'discussion_event.freezed.dart';

@freezed
class DiscussionEvent with _$DiscussionEvent {
  const factory DiscussionEvent.deleteMessage(Message message) =
      DiscussionEventDelete;
  const factory DiscussionEvent.sendImage(File file) = DiscussionEventImage;
  const factory DiscussionEvent.sendText(String text) = DiscussionEventText;
  const factory DiscussionEvent.sendSticker(Sticker sticker) =
      DiscussionEventSticker;
}
