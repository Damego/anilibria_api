import 'package:anilibria_api/src/models/events/encode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encode_start.g.dart';

@JsonSerializable()
class EncodeStartEvent extends EncodeEvent {
  @JsonKey(name: "is_reupload")
  final bool? isReupload;

  EncodeStartEvent(this.isReupload, super.id, super.episode, super.resolution,
      super.quality);

  factory EncodeStartEvent.fromJson(Map<String, dynamic> json) =>
      _$EncodeStartEventFromJson(json);
}
