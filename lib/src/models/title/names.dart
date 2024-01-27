import 'package:json_annotation/json_annotation.dart';

part 'names.g.dart';

@JsonSerializable()
class Names {
  final String? ru;
  final String? en;
  final String? alternative;

  Names(this.ru, this.en, this.alternative);

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);
}
