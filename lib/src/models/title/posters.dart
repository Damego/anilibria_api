import 'package:json_annotation/json_annotation.dart';

import 'poster.dart';
part 'posters.g.dart';

@JsonSerializable()
class Posters {
  final Poster small;
  final Poster medium;
  final Poster original;

  Posters(this.small, this.medium, this.original);

  factory Posters.fromJson(Map<String, dynamic> json) =>
      _$PostersFromJson(json);
}
