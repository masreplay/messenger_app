import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/bloc.dart';
import 'package:messenger_app/data/models/user.dart';
import 'package:messenger_app/data/repo/users_repo.dart';

part 'users_state.dart';

@injectable
class UsersCubit extends Cubit<UsersCubitState> with AsyncStateCubitMixin {
  final UsersRepository _repository;
  UsersCubit(this._repository) : super(const UsersCubitState.loading());

  @postConstruct
  void run() {
    _repository.watchAll().listen((event) {
      emit(UsersCubitState.data(event));
    }).onError((error) {
      emit(UsersCubitState.error(error, StackTrace.current));
    });
  }
}
