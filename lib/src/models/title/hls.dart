import 'package:json_annotation/json_annotation.dart';

part 'hls.g.dart';

@JsonSerializable()
class Hls {
  final String? fhd;
  final String? hd;
  final String? sd;

  Hls(this.fhd, this.hd, this.sd);

  factory Hls.fromJson(Map<String, dynamic> json) => _$HlsFromJson(json);
}
