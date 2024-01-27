import 'package:json_annotation/json_annotation.dart';

part 'poster.g.dart';

@JsonSerializable()
class Poster {
  final String? url;
  @JsonKey(name: 'raw_base64_file')
  final String? rawBase64File;

  Poster(this.url, this.rawBase64File);

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}
