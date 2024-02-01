import 'package:json_annotation/json_annotation.dart';

part 'title_type.g.dart';

@JsonSerializable()
class TitleType {
  final int? code;
  final String? string;
  @JsonKey(name: 'full_string')
  final String? fullString;
  final int? episodes;
  final int? length;

  TitleType(
      this.code, this.episodes, this.fullString, this.length, this.string);

  factory TitleType.fromJson(Map<String, dynamic> json) =>
      _$TitleTypeFromJson(json);
}
