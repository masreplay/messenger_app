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
import 'package:messenger_app/settings/settings_bloc.dart' as _i5;
import 'package:messenger_app/src/login/login_bloc.dart' as _i4;
import 'package:messenger_app/src/main/add_sticker_dialog.dart' as _i10;
import 'package:messenger_app/src/main/discussions/chat_service.dart' as _i3;
import 'package:messenger_app/src/main/discussions/discussion_cubit.dart'
    as _i11;
import 'package:messenger_app/src/main/discussions/discussion_screen.dart'
    as _i12;
import 'package:messenger_app/src/main/discussions/discussions_repo.dart'
    as _i9;
import 'package:messenger_app/src/main/discussions/stickers_bloc.dart' as _i13;
import 'package:messenger_app/src/main/discussions/user_bloc.dart' as _i14;
import 'package:messenger_app/src/main/stickers_repo.dart' as _i8;
import 'package:messenger_app/src/main/stickers_screen.dart' as _i7;
import 'package:messenger_app/src/sign_up/sign_up_bloc.dart' as _i6;

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
    gh.lazySingleton<_i3.DiscussionsRepository>(
        () => _i3.FirebaseDiscussionsRepository(gh<_i3.DiscussionGroup>()));
    gh.factory<_i4.LoginCubit>(() => _i4.LoginCubit());
    gh.factory<_i5.SettingsCubit>(() => _i5.SettingsCubit());
    gh.factory<_i6.SignUpCubit>(() => _i6.SignUpCubit());
    gh.factory<_i7.StickersFilesCubit>(() => _i7.StickersFilesCubit());
    gh.singleton<_i8.StickersRepository>(_i8.StickersRepository.create());
    gh.lazySingleton<_i8.StickersRepository>(
      () => _i8.FirebaseStickersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i7.UploadStickerFileCubit>(() => _i7.UploadStickerFileCubit());
    gh.singleton<_i9.UsersRepository>(_i9.UsersRepository.create());
    gh.lazySingleton<_i9.UsersRepository>(
      () => _i9.FirebaseUsersRepository(),
      instanceName: 'firebase',
    );
    gh.factory<_i10.AddStickerCubit>(
        () => _i10.AddStickerCubit(gh<_i8.StickersRepository>()));
    gh.factory<_i7.DeleteStickerCubit>(
        () => _i7.DeleteStickerCubit(gh<_i8.StickersRepository>()));
    gh.factory<_i11.DiscussionCubit>(
        () => _i11.DiscussionCubit(gh<_i3.DiscussionsRepository>()));
    gh.factory<_i12.DiscussionsCubit>(
        () => _i12.DiscussionsCubit(gh<_i3.DiscussionsRepository>())..init());
    gh.factory<_i13.StickersCubit>(
        () => _i13.StickersCubit(gh<_i8.StickersRepository>()));
    gh.factory<_i14.UserCubit>(() => _i14.UserCubit(gh<_i9.UsersRepository>()));
    gh.factory<_i14.UsersCubit>(
        () => _i14.UsersCubit(gh<_i9.UsersRepository>())..run());
    return this;
  }
}
