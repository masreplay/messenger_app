import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/implementation.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';
import 'package:messenger_app/src/main/stickers_repo.dart';

part 'stickers_bloc.freezed.dart';
part 'stickers_bloc.g.dart';

typedef StickersState = AsyncState<List<Sticker>, StickersException>;

@injectable
class StickersCubit extends Cubit<StickersState> {
  @appImpl
  final StickersRepository _repository;

  StickersCubit(this._repository) : super(const StickersState.loading());

  Future<void> run() async {
    emit(const StickersState.loading());
    try {
      emit(StickersState.data(await _repository.getAll()));
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      if (!state.isData) {
        emit(StickersState.error(StickersException.other(e), stackTrace));
      }
    }
  }
}

@freezed
class StickersException with _$StickersException {
  factory StickersException.other(Object? e) = _StickersException;

  factory StickersException.fromJson(Map<String, dynamic> json) =>
      _$StickersExceptionFromJson(json);
}
