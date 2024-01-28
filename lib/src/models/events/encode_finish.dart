import 'package:anilibria_api/src/models/events/base_encode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'encode_finish.g.dart';

@JsonSerializable()
class EncodeFinishEvent extends BaseEncodeEvent {
  EncodeFinishEvent(
    super.id,
    super.episode,
  );

  factory EncodeFinishEvent.fromJson(Map<String, dynamic> json) =>
      _$EncodeFinishEventFromJson(json);
}
