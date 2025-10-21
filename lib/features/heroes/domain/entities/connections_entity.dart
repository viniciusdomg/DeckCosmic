import 'package:freezed_annotation/freezed_annotation.dart';

part 'connections_entity.freezed.dart';

@freezed
abstract class ConnectionsEntity with _$ConnectionsEntity {
  const factory ConnectionsEntity({
    required String groupAffiliation,
    required String relatives,
  }) = _ConnectionsEntity;
}