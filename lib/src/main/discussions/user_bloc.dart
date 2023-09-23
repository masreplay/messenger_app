import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/bloc.dart';
import 'package:messenger_app/di/get_it.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/users_repo.dart';
import 'package:messenger_app/src/main/id.dart';

typedef UserState = AsyncState<UserData, Object?>;

@injectable
class UserCubit extends Cubit<UserState> with AsyncStateCubitMixin {
  @appImpl
  final UsersRepository _repository;
  UserCubit(this._repository) : super(const UserState.loading());
  Future<void> run(Id id) => handle(() => _repository.get(id));
}

typedef UsersState = AsyncStateDefault<List<UserData>>;

@injectable
class UsersCubit extends Cubit<UsersState> with AsyncStateCubitMixin {
  final UsersRepository _repository;
  UsersCubit(this._repository) : super(const UsersState.loading());

  @postConstruct
  void run() {
    _repository.watchAll().listen((event) {
      emit(UsersState.data(event));
    }).onError((error) {
      emit(UsersState.error(error, StackTrace.current));
    });
  }
}
