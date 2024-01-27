import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class Season {
  final String? string;
  final int? code;
  final int? year;
  @JsonKey(name: 'week_day')
  final int? weekDay;

  Season(this.string, this.code, this.year, this.weekDay);

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
