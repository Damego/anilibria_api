import 'package:json_annotation/json_annotation.dart';
import 'package:anilibria_api/src/models/title/episodes.dart';
import 'package:anilibria_api/src/models/title/quality.dart';
import 'package:anilibria_api/src/models/torrent/torrent_metadata.dart';

part 'torrent.g.dart';

@JsonSerializable()
class Torrent {
  @JsonKey(name: 'torrent_id')
  final int? torrentId;
  final Episodes? episodes;
  final Quality? quality;
  final int? leechers;
  final int? seeders;
  final int? downloads;
  @JsonKey(name: 'total_size')
  final int? totalSize;
  final String? url;
  @JsonKey(name: 'uploaded_timestamp')
  final int? uploadedTimestamp;
  final TorrentMetadata? metadata;
  @JsonKey(name: 'raw_base64_file')
  final String? rawBase64File;
  final String? hash;
  final String? magnet;

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
