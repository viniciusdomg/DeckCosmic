import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_images_entity.dart';

part 'hero_images_model.freezed.dart';
part 'hero_images_model.g.dart';

@freezed
abstract class HeroImagesModel with _$HeroImagesModel {
  const factory HeroImagesModel({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) = _HeroImagesModel;

  factory HeroImagesModel.fromJson(Map<String, dynamic> json) =>
      _$HeroImagesModelFromJson(json);
}

extension HeroImagesModelX on HeroImagesModel {
  HeroImagesEntity toEntity() {
    return HeroImagesEntity(
      xs: xs,
      sm: sm,
      md: md,
      lg: lg,
    );
  }
}