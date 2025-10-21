import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:deck_cosmic/features/heroes/domain/entities/powerstats_entity.dart';

part 'powerstats_model.freezed.dart';
part 'powerstats_model.g.dart';

@freezed
abstract class PowerstatsModel with _$PowerstatsModel {
  const factory PowerstatsModel({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) = _PowerstatsModel;

  factory PowerstatsModel.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsModelFromJson(json);
}

extension PowerstatsModelX on PowerstatsModel {
  PowerstatsEntity toEntity() {
    return PowerstatsEntity(
      intelligence: intelligence,
      strength: strength,
      speed: speed,
      durability: durability,
      power: power,
      combat: combat,
    );
  }
}