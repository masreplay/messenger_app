import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/data/models/message_model.dart';
import 'package:messenger_app/data/repo/discussions_repo.dart';

typedef MessagesState = AsyncStateDefault<List<Message>>;

class MessagesCubit extends Cubit<MessagesState> with AsyncStateCubitMixin {
  final DiscussionsRepository _repository;

  MessagesCubit(this._repository) : super(const MessagesState.loading());

  void run() {
    _repository.watchAll().listen((event) {
      emit(MessagesState.data(event));
    }).onError((error) {
      emit(MessagesState.error(error, StackTrace.current));
    });
  }
}
