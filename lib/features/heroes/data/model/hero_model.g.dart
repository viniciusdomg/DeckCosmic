// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HeroModel _$HeroModelFromJson(Map<String, dynamic> json) => _HeroModel(
  id: json['id'] as String,
  name: json['name'] as String,
  powerstats: PowerstatsModel.fromJson(
    json['powerstats'] as Map<String, dynamic>,
  ),
  appearance: AppearanceModel.fromJson(
    json['appearance'] as Map<String, dynamic>,
  ),
  biography: BiographyModel.fromJson(json['biography'] as Map<String, dynamic>),
  work: WorkModel.fromJson(json['work'] as Map<String, dynamic>),
  connections: ConnectionsModel.fromJson(
    json['connections'] as Map<String, dynamic>,
  ),
  images: HeroImagesModel.fromJson(json['images'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HeroModelToJson(_HeroModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'powerstats': instance.powerstats,
      'appearance': instance.appearance,
      'biography': instance.biography,
      'work': instance.work,
      'connections': instance.connections,
      'images': instance.images,
    };
