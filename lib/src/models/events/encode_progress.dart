import 'package:anilibria_api/src/models/events/encode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encode_progress.g.dart';

@JsonSerializable()
class EncodeProgressEvent extends EncodeEvent {
  @JsonKey(name: "encoded_percent")
  final bool? encodedPercent;

  EncodeProgressEvent(this.encodedPercent, super.id, super.episode,
      super.resolution, super.quality);

  factory EncodeProgressEvent.fromJson(Map<String, dynamic> json) =>
      _$EncodeProgressEventFromJson(json);
}
