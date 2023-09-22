import 'package:freezed_annotation/freezed_annotation.dart';

part 'sticker.freezed.dart';
part 'sticker.g.dart';

mixin _StickerMixin {
  String get nickname;
  String get path;
  String get emoji;
}

@freezed
class Sticker with _$Sticker, _StickerMixin {
  const Sticker._();
  factory Sticker({
    required String id,
    required String nickname,
    required String path,
    required String emoji,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);
}

@Freezed(toJson: true)
class StickerAdd with _$StickerAdd, _StickerMixin {
  const StickerAdd._();
  factory StickerAdd({
    required String nickname,
    required String path,
    required String emoji,
  }) = _StickerAdd;
}
