import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/connections_entity.dart';

part 'connections_model.freezed.dart';
part 'connections_model.g.dart';

@freezed
abstract class ConnectionsModel with _$ConnectionsModel {
  const factory ConnectionsModel({
    String? groupAffiliation,
    String? relatives,
  }) = _ConnectionsModel;

  factory ConnectionsModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsModelFromJson(json);
}

extension ConnectionsModelX on ConnectionsModel {
  ConnectionsEntity toEntity() {
    return ConnectionsEntity(
      groupAffiliation: groupAffiliation ?? 'N/A',
      relatives: relatives ?? 'N/A',
    );
  }
}