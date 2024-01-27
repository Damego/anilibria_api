import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/title/episodes.dart';
import 'package:anilibria_api/src/models/title/quality.dart';
import 'package:anilibria_api/src/models/torrent/torrent_metadata.dart';

part 'torrent.g.dart';

@JsonSerializable()
class Torrent {
  @JsonKey(name: 'torrent_id')
  int? torrentId;
  Episodes? episodes;
  Quality? quality;
  int? leechers;
  int? seeders;
  int? downloads;
  @JsonKey(name: 'total_size')
  int? totalSize;
  String? url;
  @JsonKey(name: 'uploaded_timestamp')
  int? uploadedTimestamp;
  TorrentMetadata? metadata;
  @JsonKey(name: 'raw_base64_file')
  String? rawBase64File;
  String? hash;
  String? magnet;

  Torrent(
    this.torrentId,
    this.episodes,
    this.quality,
    this.leechers,
    this.seeders,
    this.downloads,
    this.totalSize,
    this.url,
    this.uploadedTimestamp,
    this.metadata,
    this.rawBase64File,
    this.hash,
    this.magnet,
  );

  factory Torrent.fromJson(Map<String, dynamic> json) =>
      _$TorrentFromJson(json);
}
