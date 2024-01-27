import 'package:json_annotation/json_annotation.dart';

part 'torrent_file.g.dart';

@JsonSerializable()
class TorrentFile {
  final String? file;
  final int? size;
  final int? offset;

  TorrentFile(this.file, this.size, this.offset);

  factory TorrentFile.fromJson(Map<String, dynamic> json) =>
      _$TorrentFileFromJson(json);
}
