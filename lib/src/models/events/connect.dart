import 'package:json_annotation/json_annotation.dart';

import 'base_event.dart';

part 'connect.g.dart';

@JsonSerializable()
class ConnectEvent implements BaseEvent {
  @JsonKey(name: "api_version")
  final String apiVersion;

  ConnectEvent(this.apiVersion);

  factory ConnectEvent.fromJson(Map<String, dynamic> json) =>
      _$ConnectEventFromJson(json);
}
