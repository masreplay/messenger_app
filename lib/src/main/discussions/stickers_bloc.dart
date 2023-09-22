import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:messenger_app/bloc/serialization.dart';
import 'package:messenger_app/collections.dart';
import 'package:messenger_app/common_lib.dart';
import 'package:messenger_app/firebase.dart';
import 'package:messenger_app/src/main/discussions/sticker.dart';

part 'stickers_bloc.freezed.dart';
part 'stickers_bloc.g.dart';

typedef StickersState = AsyncState<List<Sticker>, StickersException>;

@injectable
class StickersCubit extends HydratedCubit<StickersState> {
  StickersCubit() : super(const StickersState.initial());

  Future<void> run() async {
    try {
      final collection =
          FirebaseFirestore.instance.collection(FirebaseCollections.stickers);
      final snapshot = await collection.get();
      final data = snapshot.docs.map((e) => Sticker.fromJson(e.map())).toList();
      emit(StickersState.data(data));
    } catch (e, stackTrace) {
      if (state.isData) {
        emit(StickersState.error(StickersException.other(e), stackTrace));
      }
    }
  }

  @override
  StickersState? fromJson(Map<String, dynamic> json) => StickersState.fromJson(
        json,
        serializeListOfMaps(Sticker.fromJson),
        (map) => StickersException.fromJson(map as Map<String, dynamic>),
      );

  @override
  Map<String, dynamic>? toJson(StickersState state) => state.toJson(
        deserializeListOfMaps((data) => data.toJson()),
        (error) => error.toJson(),
      );
}

@freezed
class StickersException with _$StickersException {
  factory StickersException.other(Object? e) = _StickersException;

  factory StickersException.fromJson(Map<String, dynamic> json) =>
      _$StickersExceptionFromJson(json);
}
