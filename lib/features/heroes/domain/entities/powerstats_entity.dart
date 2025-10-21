import 'package:freezed_annotation/freezed_annotation.dart';

part 'powerstats_entity.freezed.dart';

@freezed
abstract class PowerstatsEntity with _$PowerstatsEntity {
  const factory PowerstatsEntity({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _PowerstatsEntity;
}