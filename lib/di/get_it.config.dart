// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:messenger_app/data/repo/discussions_repo.dart' as _i4;
import 'package:messenger_app/data/repo/stickers_repo.dart' as _i9;
import 'package:messenger_app/data/repo/users_repo.dart' as _i10;
import 'package:messenger_app/settings/settings_bloc.dart' as _i6;
import 'package:messenger_app/src/login/login_bloc.dart' as _i5;
import 'package:messenger_app/src/main/add_sticker_dialog.dart' as _i11;
import 'package:messenger_app/src/main/discussion/discussion_cubit.dart' as _i3;
import 'package:messenger_app/src/main/stickers/stickers_bloc.dart' as _i12;
import 'package:messenger_app/src/main/stickers/stickers_screen.dart' as _i8;
import 'package:messenger_app/src/main/users/users_bloc.dart' as _i14;
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart' as _i7;
import 'package:messenger_app/src/widgets/user_bloc.dart' as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DiscussionCubit>(
        () => _i3.DiscussionCubit(gh<_i4.DiscussionsRepository>()));
    gh.factory<_i5.LoginCubit>(() => _i5.LoginCubit());
    gh.factory<_i6.SettingsCubit>(() => _i6.SettingsCubit());
    gh.factory<_i7.SignUpCubit>(() => _i7.SignUpCubit());
    gh.factory<_i8.StickersFilesCubit>(() => _i8.StickersFilesCubit());
    gh.singleton<_i9.StickersRepository>(_i9.StickersRepository.create());
    gh.lazySingleton<_i9.StickersRepository>(
      () => _i9.FirebaseStickersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i8.UploadStickerFileCubit>(() => _i8.UploadStickerFileCubit());
    gh.singleton<_i10.UsersRepository>(_i10.UsersRepository.create());
    gh.lazySingleton<_i10.UsersRepository>(
      () => _i10.FirebaseUsersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i11.AddStickerCubit>(
        () => _i11.AddStickerCubit(gh<_i9.StickersRepository>()));
    gh.factory<_i8.DeleteStickerCubit>(
        () => _i8.DeleteStickerCubit(gh<_i9.StickersRepository>()));
    gh.factory<_i12.StickersCubit>(
        () => _i12.StickersCubit(gh<_i9.StickersRepository>()));
    gh.factory<_i13.UserCubit>(
        () => _i13.UserCubit(gh<_i10.UsersRepository>()));
    gh.factory<_i14.UsersCubit>(
        () => _i14.UsersCubit(gh<_i10.UsersRepository>())..run());
    gh.factory<_i13.UsersCubit>(
        () => _i13.UsersCubit(gh<_i10.UsersRepository>())..run());
    return this;
  }
}
