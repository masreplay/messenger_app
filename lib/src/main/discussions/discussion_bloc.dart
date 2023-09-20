import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/src/main/discussions/message_model.dart';

// Define events
abstract class DiscussionEvent {}

class SendImageEvent extends DiscussionEvent {
  final String imageUrl;

  SendImageEvent(this.imageUrl);
}

class SendTextEvent extends DiscussionEvent {
  final MessageText text;

  SendTextEvent(this.text);
}

class SendStickerEvent extends DiscussionEvent {
  final String stickerUrl;

  SendStickerEvent(this.stickerUrl);
}

class DiscussionInitial extends DiscussionState {}

class SendingInProgress extends DiscussionState {}

class MessageSent extends DiscussionState {}

class DiscussionFailure extends DiscussionState {
  final String error;

  DiscussionFailure(this.error);
}

abstract class DiscussionState {}

// Define the BLoC
class DiscussionBloc extends Bloc<DiscussionEvent, DiscussionState> {
  DiscussionBloc() : super(DiscussionInitial());

  Stream<DiscussionState> mapEventToState(DiscussionEvent event) async* {
    if (event is SendImageEvent ||
        event is SendTextEvent ||
        event is SendStickerEvent) {
      yield SendingInProgress();

      try {
        // Simulate sending data to the server
        await Future.delayed(const Duration(seconds: 2));
        yield MessageSent();
      } catch (e) {
        yield DiscussionFailure("Failed to send message: $e");
      }
    }
  }
}
