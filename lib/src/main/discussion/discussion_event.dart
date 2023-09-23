import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/models/sticker.dart';

part 'discussion_event.freezed.dart';

@freezed
class DiscussionEvent with _$DiscussionEvent {
  const factory DiscussionEvent.image(File file) = DiscussionEventImage;
  const factory DiscussionEvent.text(String text) = DiscussionEventText;
  const factory DiscussionEvent.sticker(Sticker sticker) =
      DiscussionEventSticker;
}
