import 'package:json_annotation/json_annotation.dart';

part 'type.g.dart';

@JsonSerializable()
class Type {
  int? code;
  String? string;
  @JsonKey(name: 'full_string')
  String? fullString;
  int? episodes;
  int? length;

  Type(this.code, this.episodes, this.fullString, this.length, this.string);

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
