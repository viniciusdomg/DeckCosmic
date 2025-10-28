// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BiographyModel _$BiographyModelFromJson(Map<String, dynamic> json) =>
    _BiographyModel(
      fullName: json['fullName'] as String?,
      placeOfBirth: json['placeOfBirth'] as String?,
      firstAppearance: json['firstAppearance'] as String?,
      publisher: json['publisher'] as String?,
      alignment: json['alignment'] as String?,
    );

Map<String, dynamic> _$BiographyModelToJson(_BiographyModel instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'placeOfBirth': instance.placeOfBirth,
      'firstAppearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };
