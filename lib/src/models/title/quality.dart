import 'package:json_annotation/json_annotation.dart';

part 'quality.g.dart';

@JsonSerializable()
class Quality {
  final String? string;
  final String? type;
  final String? resolution;
  final String? encoder;
  @JsonKey(name: 'lq_audio')
  final bool? lqAudio;

  Quality(this.string, this.type, this.resolution, this.encoder, this.lqAudio);

  factory Quality.fromJson(Map<String, dynamic> json) =>
      _$QualityFromJson(json);
}
