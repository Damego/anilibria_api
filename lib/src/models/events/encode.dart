import 'package:anilibria_api/src/models/events/base_encode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encode.g.dart';

@JsonSerializable()
class EncodeEvent extends BaseEncodeEvent {
  final String? resolution;
  final String? quality;

  EncodeEvent(
    this.quality,
    this.resolution,
    super.id,
    super.episode,
  );

  factory EncodeEvent.fromJson(Map<String, dynamic> json) =>
      _$EncodeEventFromJson(json);
}
