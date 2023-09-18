import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

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
class FutureState<Data, Error> with _$FutureState<Data, Error> {
  const FutureState._();

  @_jsonSerializable
  const factory FutureState.initial() = FutureStateInitial<Data, Error>;
  @_jsonSerializable
  const factory FutureState.loading() = FutureStateLoading<Data, Error>;
  @_jsonSerializable
  const factory FutureState.data(Data data) = FutureStateData<Data, Error>;
  @_jsonSerializable
  const factory FutureState.error(
    Error error,
    @StackTraceConverter() StackTrace stackTrace,
  ) = FutureStateError<Data, Error>;

  factory FutureState.fromJson(
    Map<String, dynamic> json,
    FromJsonGeneric<Data> fromJsonData,
    FromJsonGeneric<Error> fromJsonError,
  ) =>
      _$FutureStateFromJson<Data, Error>(json, fromJsonData, fromJsonError);

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
