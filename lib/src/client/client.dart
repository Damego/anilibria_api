import 'dart:convert';

import 'package:anilibria_api/src/client/event_mixin.dart';
import 'package:anilibria_api/src/http/api.dart';
import 'package:anilibria_api/src/http/site.dart';
import 'package:anilibria_api/src/models/events/base_event.dart';
import 'package:anilibria_api/src/models/models.dart';
import 'package:anilibria_api/src/websocket/client.dart';
import 'package:anilibria_api/types.dart';

class AnilibriaClient with EventMixin {
  final ApiHttpClient _apiHttp;
  final SiteHttpClient _siteHttp;
  final WebSocketClient _websocket;

  AnilibriaClient({String? siteUrl})
      : _apiHttp = ApiHttpClient(),
        _siteHttp = SiteHttpClient(siteUrl ?? "test.anilib.top"), // TODO
        _websocket = WebSocketClient();

  // * User region

  Future<User> signIn(String login, String password) async {
    var sessionId = await _siteHttp.signIn(login, password);
    return User.fromJson(await _apiHttp.getUser(sessionId));
  }

  Future<User> getUser(String sessionId) async {
    final data = await _apiHttp.getUser(sessionId);
    return User.fromJson(data);
  }

  Future<ListPagination<Title>> getUserFavorites(String sessionId,
      {List<String>? filter,
      List<String>? remove,
      List<String>? include,
      String? descriptionType,
      int? limit,
      int? after,
      int? page,
      int? itemsPerPage}) async {
    final data = await _apiHttp.getUserFavorites(sessionId,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType,
        limit: limit,
        after: after,
        page: page,
        itemsPerPage: itemsPerPage);
    return ListPagination<Title>.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<void> addUserFavoriteTitle(String sessionId, int titleId) async {
    // todo: return type for
    await _apiHttp.addUserFavoriteTitle(sessionId, titleId);
  }

  Future<void> removeUserFavoriteTitle(String sessionId, int titleId) async {
    // todo: return type for
    var res = await _apiHttp.removeUserFavoriteTitle(sessionId, titleId);
    print(res.toString());
  }

  // * User end region

  // * Title region

  Future<Title> getTitle({
    String? id,
    String? code,
    int? torrentId,
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
  }) async {
    final data = await _apiHttp.getTitle(
        id: id,
        code: code,
        torrentId: torrentId,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType);
    return Title.fromJsonModel(data, descriptionType);
  }

  Future<ListPagination<Title>> getTitleList({
    List<int>? idList,
    List<String>? codeList,
    List<int>? torrentIdList,
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getTitleList(
        idList: idList,
        codeList: codeList,
        torrentIdList: torrentIdList,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType,
        page: page,
        itemsPerPage: itemsPerPage);
    return ListPagination<Title>.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<ListPagination<Title>> getTitleUpdates({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    int? limit,
    int? since,
    String? descriptionType,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getTitleUpdates(
      filter: filter,
      remove: remove,
      include: include,
      limit: limit,
      since: since,
      descriptionType: descriptionType,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination<Title>.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<ListPagination<Title>> getTitleChanges({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    int? limit,
    int? since,
    String? descriptionType,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getTitleChanges(
      filter: filter,
      remove: remove,
      include: include,
      limit: limit,
      since: since,
      descriptionType: descriptionType,
      after: after,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination<Title>.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<List<Schedule>> getSchedule({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    List<int>? days,
    String? descriptionType,
  }) async {
    final data = await _apiHttp.getSchedule(
      filter: filter,
      remove: remove,
      include: include,
      days: days,
      descriptionType: descriptionType,
    );
    return [
      for (final json in data) Schedule.fromJsonModel(json, descriptionType)
    ];
  }

  Future<Title> getRandomTitle({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
  }) async {
    final data = await _apiHttp.getRandomTitle(
      filter: filter,
      remove: remove,
      include: include,
      descriptionType: descriptionType,
    );
    return Title.fromJsonModel(data, descriptionType);
  }

  Future<ListPagination<Title>> searchTitles({
    List<String>? search,
    List<int>? years,
    List<String>? types,
    List<String>? seasonCode,
    List<String>? genres,
    List<String>? team,
    List<String>? voice,
    List<String>? translator,
    List<String>? editing,
    List<String>? decor,
    List<String>? timing,
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
    int? limit,
    int? after,
    String? orderBy,
    int? sortDirection,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.searchTitles(
      search: search,
      years: years,
      types: types,
      seasonCode: seasonCode,
      genres: genres,
      team: team,
      voice: voice,
      translator: translator,
      editing: editing,
      decor: decor,
      timing: timing,
      filter: filter,
      remove: remove,
      include: include,
      descriptionType: descriptionType,
      limit: limit,
      after: after,
      orderBy: orderBy,
      sortDirection: sortDirection,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<ListPagination<Title>> searchTitlesAdvanced({
    String? query,
    String? simpleQuery,
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
    int? limit,
    int? after,
    String? orderBy,
    int? sortDirection,
    int? page,
    int? itemsPerPage,
  }) async {
    if (query == null && simpleQuery == null) {
      throw "Should be provided one of query or simpleQuery parameter!";
    }

    final data = await _apiHttp.searchTitlesAdvanced(
      query: query,
      simpleQuery: simpleQuery,
      filter: filter,
      remove: remove,
      include: include,
      descriptionType: descriptionType,
      limit: limit,
      after: after,
      orderBy: orderBy,
      sortDirection: sortDirection,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination.fromJson(
        data, (json) => Title.fromJsonModel(json as Dict, descriptionType));
  }

  Future<TitleFranchise> getTitleFranchise(
    int titleId, {
    List<String>? filter,
    List<String>? remove,
  }) async {
    final data = await _apiHttp.getTitleFranchise(titleId,
        filter: filter, remove: remove);
    return TitleFranchise.fromJson(data);
  }

  Future<ListPagination<TitleFranchise>> getAllFranchises({
    List<String>? filter,
    List<String>? remove,
    int? limit,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getAllFranchises(
      filter: filter,
      remove: remove,
      limit: limit,
      after: after,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination.fromJson(
        data, (json) => TitleFranchise.fromJson(json as Dict));
  }

  // * Title end region

  // * Misc region

  Future<List<YouTubeVideo>> getYoutube({
    List<String>? filter,
    List<String>? remove,
    int? limit,
    int? since,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getYoutube(
      filter: filter,
      remove: remove,
      limit: limit,
      since: since,
      after: after,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return [for (final json in data) YouTubeVideo.fromJson(json)];
  }

  Future<ListPagination<Feed>> getFeed({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    int? limit,
    int? since,
    String? descriptionType,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getFeed(
      filter: filter,
      remove: remove,
      include: include,
      limit: limit,
      since: since,
      descriptionType: descriptionType,
      after: after,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination.fromJson(
        data, (json) => Feed.fromJsonModel(json as Dict, descriptionType));
  }

  Future<List<int>> getYears() {
    return _apiHttp.getYears();
  }

  Future<List<String>> getGenres() {
    return _apiHttp.getGenres();
  }

  Future<Team> getTeam() async {
    final data = await _apiHttp.getTeam();
    return Team.fromJson(data);
  }

  // * Misc end region

  // * Torrent region

  Future<ListPagination<SeedStats>> getTorrentSeedStats({
    List<String>? users,
    List<String>? filter,
    List<String>? remove,
    int? limit,
    int? after,
    String? sortBy,
    int? order,
    int? page,
    int? itemsPerPage,
  }) async {
    final data = await _apiHttp.getTorrentSeedStats(
      users: users,
      filter: filter,
      remove: remove,
      limit: limit,
      after: after,
      sortBy: sortBy,
      order: order,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination.fromJson(
        data, (json) => SeedStats.fromJson(json as Dict));
  }

  // * Torrent end region

  // * Websockets

  Future<void> connect() async {
    await _websocket.connect();
  }

  late final Stream<BaseEvent> events = _websocket.events;
}
