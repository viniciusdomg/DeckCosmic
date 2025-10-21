// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powerstats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PowerstatsModel _$PowerstatsModelFromJson(Map<String, dynamic> json) =>
    _PowerstatsModel(
      intelligence: (json['intelligence'] as num).toInt(),
      strength: (json['strength'] as num).toInt(),
      speed: (json['speed'] as num).toInt(),
      durability: (json['durability'] as num).toInt(),
      power: (json['power'] as num).toInt(),
      combat: (json['combat'] as num).toInt(),
    );

Map<String, dynamic> _$PowerstatsModelToJson(_PowerstatsModel instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };
