import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/models/message_model.dart';

part 'discussion_state.freezed.dart';

@freezed
class DiscussionState with _$DiscussionState {
  const factory DiscussionState.initial() = DiscussionStateInitial;
  const factory DiscussionState.sendingInProgress() =
      DiscussionStateSendingInProgress;
  const factory DiscussionState.messageSent(Message message) =
      DiscussionStateMessageSent;
  const factory DiscussionState.failure(Object? error, StackTrace stackTrace) =
      DiscussionStateFailure;
}
