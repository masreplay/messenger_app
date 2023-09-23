import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:messenger_app/data/serialization.dart';

part 'async_state.freezed.dart';
part 'async_state.g.dart';


/// Generic async state management using [Freezed] and [Cubit].
mixin AsyncStateCubitMixin<Data> on Cubit<AsyncStateDefault<Data>> {
  Future<void> handle(FutureOr<Data> Function() data) async {
    debugPrint("loading: $Data");
    emit(AsyncStateDefault<Data>.loading());
    try {
      debugPrint("data: $Data");
      final result = await data();
      emit(AsyncStateDefault<Data>.data(result));
    } catch (e, stackTrace) {
      log(toString(), error: e, stackTrace: stackTrace);
      emit(AsyncStateDefault<Data>.error(e, stackTrace));
    }
  }
}

const _jsonSerializable = JsonSerializable(
  createFactory: true,
  createToJson: true,
  explicitToJson: true,
  genericArgumentFactories: true,
);

typedef AsyncStateDefault<T extends Object?> = AsyncState<T, Object?>;

@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.pascal,
  genericArgumentFactories: true,
)
class AsyncState<Data, Error> with _$AsyncState<Data, Error> {
  const AsyncState._();

  @_jsonSerializable
  const factory AsyncState.initial() = AsyncStateInitial<Data, Error>;
  @_jsonSerializable
  const factory AsyncState.loading() = AsyncStateLoading<Data, Error>;
  @_jsonSerializable
  const factory AsyncState.data(Data data) = AsyncStateData<Data, Error>;
  @_jsonSerializable
  const factory AsyncState.error(
    Error error,
    @StackTraceConverter() StackTrace stackTrace,
  ) = AsyncStateError<Data, Error>;

  factory AsyncState.fromJson(
    Map<String, dynamic> json,
    FromJsonGeneric<Data> fromJsonData,
    FromJsonGeneric<Error> fromJsonError,
  ) =>
      _$AsyncStateFromJson<Data, Error>(json, fromJsonData, fromJsonError);

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
  bool get isData => maybeWhen(data: (_) => true, orElse: () => false);
}

class StackTraceConverter implements JsonConverter<StackTrace, String> {
  const StackTraceConverter();

  @override
  StackTrace fromJson(String json) => StackTrace.fromString(json);

  @override
  String toJson(StackTrace object) => object.toString();
}
