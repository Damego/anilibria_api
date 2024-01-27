import 'package:json_annotation/json_annotation.dart';

import 'poster.dart';
part 'posters.g.dart';

@JsonSerializable()
class Posters {
  Poster small;
  Poster medium;
  Poster original;

  Posters(this.small, this.medium, this.original);

  factory Posters.fromJson(Map<String, dynamic> json) =>
      _$PostersFromJson(json);
}
