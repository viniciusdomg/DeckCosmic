import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero_images_entity.freezed.dart';

@freezed
abstract class HeroImagesEntity with _$HeroImagesEntity {
  const factory HeroImagesEntity({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) = _HeroImagesEntity;
}