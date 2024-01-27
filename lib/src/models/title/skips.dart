import 'package:json_annotation/json_annotation.dart';

part 'skips.g.dart';

@JsonSerializable()
class Skips {
  List<int>? opening;
  List<int>? ending;

  Skips(this.opening, this.ending);

  factory Skips.fromJson(Map<String, dynamic> json) => _$SkipsFromJson(json);
}
