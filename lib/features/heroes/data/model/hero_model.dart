import 'package:deck_cosmic/features/heroes/data/model/connections_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/work_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/data/model/powerstats_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/appearance_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/biography_model.dart';
import 'package:deck_cosmic/features/heroes/data/model/hero_images_model.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/hero_entity.dart';

part 'hero_model.freezed.dart';
part 'hero_model.g.dart';

@freezed
abstract class HeroModel with _$HeroModel {
  const factory HeroModel({
    required String id,
    required String name,
    required PowerstatsModel powerstats,
    required AppearanceModel appearance,
    required BiographyModel biography,
    required WorkModel work,
    required ConnectionsModel connections,
    required HeroImagesModel images,
  }) = _HeroModel;

  factory HeroModel.fromJson(Map<String, dynamic> json) =>
      _$HeroModelFromJson(json);
}

extension HeroModelX on HeroModel {
  HeroEntity toEntity() {
    return HeroEntity(
      id: id,
      name: name,
      powerstats: powerstats.toEntity(),
      appearance: appearance.toEntity(),
      biography: biography.toEntity(),
      work: work.toEntity(),
      connections: connections.toEntity(),
      images: images.toEntity(),
    );
  }
}