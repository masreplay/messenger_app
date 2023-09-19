import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';
part 'async_state.g.dart';

const _jsonSerializable = JsonSerializable(
  createFactory: true,
  createToJson: true,
  explicitToJson: true,
  genericArgumentFactories: true,
);

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
}

typedef FromJsonGeneric<R> = R Function(Object?);

class StackTraceConverter implements JsonConverter<StackTrace, String> {
  const StackTraceConverter();

  @override
  StackTrace fromJson(String json) => StackTrace.fromString(json);

  @override
  String toJson(StackTrace object) => object.toString();
}
