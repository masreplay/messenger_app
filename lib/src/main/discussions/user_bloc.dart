import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/bloc.dart';
import 'package:messenger_app/di/get_it.dart';
import 'package:messenger_app/models/user.dart';
import 'package:messenger_app/src/main/discussions/users_repo.dart';
import 'package:messenger_app/src/main/id.dart';

typedef UserCubitState = AsyncState<UserData, Object?>;

@injectable
class UserCubit extends Cubit<UserCubitState> with AsyncStateCubitMixin {
  @appImpl
  final UsersRepository _repository;
  UserCubit(this._repository) : super(const UserCubitState.loading());
  Future<void> run(Id id) => handle(() => _repository.get(id));
}

typedef UsersCubitState = AsyncStateDefault<List<UserData>>;

@injectable
class UsersCubit extends Cubit<UsersCubitState> with AsyncStateCubitMixin {
  final UsersRepository _repository;
  UsersCubit(this._repository) : super(const UsersCubitState.loading());

  @postConstruct
  void run() {
    print('UsersCubit.run');
    _repository.watchAll().listen((event) {
      emit(UsersCubitState.data(event));
    }).onError((error) {
      emit(UsersCubitState.error(error, StackTrace.current));
    });
  }
}
