import 'package:json_annotation/json_annotation.dart';

part 'names.g.dart';

@JsonSerializable()
class Names {
  String? ru;
  String? en;
  String? alternative;

  Names(this.ru, this.en, this.alternative);

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);
}
