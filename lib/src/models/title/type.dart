import 'package:json_annotation/json_annotation.dart';

part 'type.g.dart';

@JsonSerializable()
class Type {
  final int? code;
  final String? string;
  @JsonKey(name: 'full_string')
  final String? fullString;
  final int? episodes;
  final int? length;

  Type(this.code, this.episodes, this.fullString, this.length, this.string);

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
