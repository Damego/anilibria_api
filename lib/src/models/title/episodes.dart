import 'package:json_annotation/json_annotation.dart';

part 'episodes.g.dart';

@JsonSerializable()
class Episodes {
  double? first;
  double? last;
  String? string;

  Episodes(this.first, this.last, this.string);

  factory Episodes.fromJson(Map<String, dynamic> json) =>
      _$EpisodesFromJson(json);
}
