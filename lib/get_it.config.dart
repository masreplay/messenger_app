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
import 'package:messenger_app/settings/settings_bloc.dart' as _i7;
import 'package:messenger_app/src/login/login_bloc.dart' as _i5;
import 'package:messenger_app/src/main/add_sticker_dialog.dart' as _i12;
import 'package:messenger_app/src/main/discussions/discussion_cubit.dart'
    as _i3;
import 'package:messenger_app/src/main/discussions/discussion_screen.dart'
    as _i6;
import 'package:messenger_app/src/main/discussions/discussions_repo.dart'
    as _i4;
import 'package:messenger_app/src/main/discussions/stickers_bloc.dart' as _i13;
import 'package:messenger_app/src/main/discussions/user_bloc.dart' as _i14;
import 'package:messenger_app/src/main/discussions/users_repo.dart' as _i11;
import 'package:messenger_app/src/main/stickers_repo.dart' as _i10;
import 'package:messenger_app/src/main/stickers_screen.dart' as _i9;
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart' as _i8;

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
    gh.factory<_i6.MessagesCubit>(
        () => _i6.MessagesCubit(gh<_i4.DiscussionsRepository>())..init());
    gh.factory<_i7.SettingsCubit>(() => _i7.SettingsCubit());
    gh.factory<_i8.SignUpCubit>(() => _i8.SignUpCubit());
    gh.factory<_i9.StickersFilesCubit>(() => _i9.StickersFilesCubit());
    gh.singleton<_i10.StickersRepository>(_i10.StickersRepository.create());
    gh.lazySingleton<_i10.StickersRepository>(
      () => _i10.FirebaseStickersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i9.UploadStickerFileCubit>(() => _i9.UploadStickerFileCubit());
    gh.singleton<_i11.UsersRepository>(_i11.UsersRepository.create());
    gh.lazySingleton<_i11.UsersRepository>(
      () => _i11.FirebaseUsersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i12.AddStickerCubit>(
        () => _i12.AddStickerCubit(gh<_i10.StickersRepository>()));
    gh.factory<_i9.DeleteStickerCubit>(
        () => _i9.DeleteStickerCubit(gh<_i10.StickersRepository>()));
    gh.factory<_i13.StickersCubit>(
        () => _i13.StickersCubit(gh<_i10.StickersRepository>()));
    gh.factory<_i14.UserCubit>(
        () => _i14.UserCubit(gh<_i11.UsersRepository>()));
    gh.factory<_i14.UsersCubit>(
        () => _i14.UsersCubit(gh<_i11.UsersRepository>())..run());
    return this;
  }
}
