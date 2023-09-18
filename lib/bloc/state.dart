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
class State<Data, Error> with _$State<Data, Error> {
  const State._();

  @_jsonSerializable
  const factory State.initial() = StateInitial<Data, Error>;
  @_jsonSerializable
  const factory State.loading() = StateLoading<Data, Error>;
  @_jsonSerializable
  const factory State.data(Data data) = StateData<Data, Error>;
  @_jsonSerializable
  const factory State.error(
    Error error,
    @StackTraceConverter() StackTrace stackTrace,
  ) = StateError<Data, Error>;

  factory State.fromJson(
    Map<String, dynamic> json,
    FromJsonGeneric<Data> fromJsonData,
    FromJsonGeneric<Error> fromJsonError,
  ) =>
      _$StateFromJson<Data, Error>(json, fromJsonData, fromJsonError);
}

typedef FromJsonGeneric<R> = R Function(Object?);

class StackTraceConverter implements JsonConverter<StackTrace, String> {
  const StackTraceConverter();

  @override
  StackTrace fromJson(String json) => StackTrace.fromString(json);

  @override
  String toJson(StackTrace object) => object.toString();
}
