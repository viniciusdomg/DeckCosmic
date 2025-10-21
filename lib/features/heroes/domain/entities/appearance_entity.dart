import 'package:freezed_annotation/freezed_annotation.dart';

part 'appearance_entity.freezed.dart';

@freezed
abstract class AppearanceEntity with _$AppearanceEntity {
  const factory AppearanceEntity({
    required String gender,
    required String race,
    required String height, // <-- Note que é só uma String limpa
    required String weight, // <-- Note que é só uma String limpa
    required String eyeColor,
    required String hairColor,
  }) = _AppearanceEntity;
}