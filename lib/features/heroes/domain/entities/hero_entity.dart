import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/powerstats_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/appearance_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/biography_entity.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_images_entity.dart';

part 'hero_entity.freezed.dart';

@freezed
abstract class HeroEntity with _$HeroEntity {
  const factory HeroEntity({
    required String id,
    required String name,
    required PowerstatsEntity powerstats,
    required AppearanceEntity appearance,
    required BiographyEntity biography,
    required HeroImagesEntity images,
  }) = _HeroEntity;
}