// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discussion_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageThemeData {
  MessageDirection get direction => throw _privateConstructorUsedError;
  BorderRadius get borderRadius => throw _privateConstructorUsedError;
  TextStyle get textStyle => throw _privateConstructorUsedError;
  Color get cardColor => throw _privateConstructorUsedError;
  TextStyle get imageDateTextStyle => throw _privateConstructorUsedError;
  TextStyle get dateTextStyle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageThemeDataCopyWith<MessageThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageThemeDataCopyWith<$Res> {
  factory $MessageThemeDataCopyWith(
          MessageThemeData value, $Res Function(MessageThemeData) then) =
      _$MessageThemeDataCopyWithImpl<$Res, MessageThemeData>;
  @useResult
  $Res call(
      {MessageDirection direction,
      BorderRadius borderRadius,
      TextStyle textStyle,
      Color cardColor,
      TextStyle imageDateTextStyle,
      TextStyle dateTextStyle});
}

/// @nodoc
class _$MessageThemeDataCopyWithImpl<$Res, $Val extends MessageThemeData>
    implements $MessageThemeDataCopyWith<$Res> {
  _$MessageThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? borderRadius = null,
    Object? textStyle = null,
    Object? cardColor = null,
    Object? imageDateTextStyle = null,
    Object? dateTextStyle = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as MessageDirection,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      cardColor: null == cardColor
          ? _value.cardColor
          : cardColor // ignore: cast_nullable_to_non_nullable
              as Color,
      imageDateTextStyle: null == imageDateTextStyle
          ? _value.imageDateTextStyle
          : imageDateTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      dateTextStyle: null == dateTextStyle
          ? _value.dateTextStyle
          : dateTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageThemeDataCopyWith<$Res>
    implements $MessageThemeDataCopyWith<$Res> {
  factory _$$_MessageThemeDataCopyWith(
          _$_MessageThemeData value, $Res Function(_$_MessageThemeData) then) =
      __$$_MessageThemeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageDirection direction,
      BorderRadius borderRadius,
      TextStyle textStyle,
      Color cardColor,
      TextStyle imageDateTextStyle,
      TextStyle dateTextStyle});
}

/// @nodoc
class __$$_MessageThemeDataCopyWithImpl<$Res>
    extends _$MessageThemeDataCopyWithImpl<$Res, _$_MessageThemeData>
    implements _$$_MessageThemeDataCopyWith<$Res> {
  __$$_MessageThemeDataCopyWithImpl(
      _$_MessageThemeData _value, $Res Function(_$_MessageThemeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? borderRadius = null,
    Object? textStyle = null,
    Object? cardColor = null,
    Object? imageDateTextStyle = null,
    Object? dateTextStyle = null,
  }) {
    return _then(_$_MessageThemeData(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as MessageDirection,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as BorderRadius,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      cardColor: null == cardColor
          ? _value.cardColor
          : cardColor // ignore: cast_nullable_to_non_nullable
              as Color,
      imageDateTextStyle: null == imageDateTextStyle
          ? _value.imageDateTextStyle
          : imageDateTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      dateTextStyle: null == dateTextStyle
          ? _value.dateTextStyle
          : dateTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle,
    ));
  }
}

/// @nodoc

class _$_MessageThemeData
    with DiagnosticableTreeMixin
    implements _MessageThemeData {
  const _$_MessageThemeData(
      {required this.direction,
      required this.borderRadius,
      required this.textStyle,
      required this.cardColor,
      required this.imageDateTextStyle,
      required this.dateTextStyle});

  @override
  final MessageDirection direction;
  @override
  final BorderRadius borderRadius;
  @override
  final TextStyle textStyle;
  @override
  final Color cardColor;
  @override
  final TextStyle imageDateTextStyle;
  @override
  final TextStyle dateTextStyle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageThemeData(direction: $direction, borderRadius: $borderRadius, textStyle: $textStyle, cardColor: $cardColor, imageDateTextStyle: $imageDateTextStyle, dateTextStyle: $dateTextStyle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageThemeData'))
      ..add(DiagnosticsProperty('direction', direction))
      ..add(DiagnosticsProperty('borderRadius', borderRadius))
      ..add(DiagnosticsProperty('textStyle', textStyle))
      ..add(DiagnosticsProperty('cardColor', cardColor))
      ..add(DiagnosticsProperty('imageDateTextStyle', imageDateTextStyle))
      ..add(DiagnosticsProperty('dateTextStyle', dateTextStyle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageThemeData &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.cardColor, cardColor) ||
                other.cardColor == cardColor) &&
            (identical(other.imageDateTextStyle, imageDateTextStyle) ||
                other.imageDateTextStyle == imageDateTextStyle) &&
            (identical(other.dateTextStyle, dateTextStyle) ||
                other.dateTextStyle == dateTextStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, borderRadius,
      textStyle, cardColor, imageDateTextStyle, dateTextStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageThemeDataCopyWith<_$_MessageThemeData> get copyWith =>
      __$$_MessageThemeDataCopyWithImpl<_$_MessageThemeData>(this, _$identity);
}

abstract class _MessageThemeData implements MessageThemeData {
  const factory _MessageThemeData(
      {required final MessageDirection direction,
      required final BorderRadius borderRadius,
      required final TextStyle textStyle,
      required final Color cardColor,
      required final TextStyle imageDateTextStyle,
      required final TextStyle dateTextStyle}) = _$_MessageThemeData;

  @override
  MessageDirection get direction;
  @override
  BorderRadius get borderRadius;
  @override
  TextStyle get textStyle;
  @override
  Color get cardColor;
  @override
  TextStyle get imageDateTextStyle;
  @override
  TextStyle get dateTextStyle;
  @override
  @JsonKey(ignore: true)
  _$$_MessageThemeDataCopyWith<_$_MessageThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}
