import 'package:anilibria_api/src/models/events/encode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encode_end.g.dart';

@JsonSerializable()
class EncodeEndEvent extends EncodeEvent {
  EncodeEndEvent(super.id, super.episode, super.resolution, super.quality);

  factory EncodeEndEvent.fromJson(Map<String, dynamic> json) =>
      _$EncodeEndEventFromJson(json);
}
