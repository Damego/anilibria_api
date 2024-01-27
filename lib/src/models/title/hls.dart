import 'package:json_annotation/json_annotation.dart';

part 'hls.g.dart';

@JsonSerializable()
class Hls {
  String? fhd;
  String? hd;
  String? sd;

  Hls(this.fhd, this.hd, this.sd);

  factory Hls.fromJson(Map<String, dynamic> json) => _$HlsFromJson(json);
}
