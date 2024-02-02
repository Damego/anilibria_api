import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_encode.g.dart';

@JsonSerializable()
class BaseEncodeEvent implements BaseEvent {
  final String? id;
  final String? episode;

  BaseEncodeEvent(this.id, this.episode);

  factory BaseEncodeEvent.fromJson(Map<String, dynamic> json) =>
      _$BaseEncodeEventFromJson(json);
}
