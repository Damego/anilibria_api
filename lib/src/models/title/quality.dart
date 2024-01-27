import 'package:json_annotation/json_annotation.dart';

part 'quality.g.dart';

@JsonSerializable()
class Quality {
  String? string;
  String? type;
  String? resolution;
  String? encoder;
  @JsonKey(name: 'lq_audio')
  bool? lqAudio;

  Quality(this.string, this.type, this.resolution, this.encoder, this.lqAudio);

  factory Quality.fromJson(Map<String, dynamic> json) =>
      _$QualityFromJson(json);
}
