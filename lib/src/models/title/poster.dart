import 'package:json_annotation/json_annotation.dart';

part 'poster.g.dart';

@JsonSerializable()
class Poster {
  String? url;
  @JsonKey(name: 'raw_base64_file')
  String? rawBase64File;

  Poster(this.url, this.rawBase64File);

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}
