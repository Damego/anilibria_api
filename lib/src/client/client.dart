import 'package:anilibria_api/src/http/anilibria.dart';
import 'package:anilibria_api/src/models/models.dart';

class AnilibriaClient {
  final AnilibriaHttpClient _http;

  AnilibriaClient() : _http = AnilibriaHttpClient();

  // * User region

  Future<User> signIn(String login, String password) async {
    var sessionId = await _http.signIn(login, password);
    return User.fromJson(await _http.getUser(sessionId));
  }

  Future<User> getUser(String sessionId) async {
    final data = await _http.getUser(sessionId);
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
    final data = await _http.getUserFavorites(sessionId,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType,
        limit: limit,
        after: after,
        page: page,
        itemsPerPage: itemsPerPage);
    return ListPagination<Title>.fromJson(data, Title.fromJsonModel);
  }

  Future<void> addUserFavoriteTitle(String sessionId, int titleId) async {
    // todo: return type for
    await _http.addUserFavoriteTitle(sessionId, titleId);
  }

  Future<void> removeUserFavoriteTitle(String sessionId, int titleId) async {
    // todo: return type for
    var res = await _http.removeUserFavoriteTitle(sessionId, titleId);
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
    final data = await _http.getTitle(
        id: id,
        code: code,
        torrentId: torrentId,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType);
    return Title.fromJson(data);
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
    final data = await _http.getTitleList(
        idList: idList,
        codeList: codeList,
        torrentIdList: torrentIdList,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType,
        page: page,
        itemsPerPage: itemsPerPage);
    return ListPagination<Title>.fromJson(data, Title.fromJsonModel);
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
    final data = await _http.getTitleUpdates(
      filter: filter,
      remove: remove,
      include: include,
      limit: limit,
      since: since,
      descriptionType: descriptionType,
      page: page,
      itemsPerPage: itemsPerPage,
    );
    return ListPagination<Title>.fromJson(data, Title.fromJsonModel);
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
    final data = await _http.getTitleChanges(
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
    return ListPagination<Title>.fromJson(data, Title.fromJsonModel);
  }

  Future<List<Schedule>> getSchedule({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    List<int>? days,
    String? descriptionType,
  }) async {
    final data = await _http.getSchedule(
      filter: filter,
      remove: remove,
      include: include,
      days: days,
      descriptionType: descriptionType,
    );
    return [for (final json in data) Schedule.fromJson(json)];
  }

  Future<Title> getRandomTitle({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
  }) async {
    final data = await _http.getRandomTitle(
      filter: filter,
      remove: remove,
      include: include,
      descriptionType: descriptionType,
    );
    return Title.fromJson(data);
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
    final data = await _http.searchTitles(
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
    return ListPagination.fromJson(data, Title.fromJsonModel);
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

    final data = await _http.searchTitlesAdvanced(
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
    return ListPagination.fromJson(data, Title.fromJsonModel);
  }

  Future<TitleFranchise> getTitleFranchise(
    int titleId, {
    List<String>? filter,
    List<String>? remove,
  }) async {
    final data =
        await _http.getTitleFranchise(titleId, filter: filter, remove: remove);
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
    final data = await _http.getAllFranchises(
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
    final data = await _http.getYoutube(
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

  /// Возвращает список Title или YouTubeVideo
  // Future<ListPagination> getFeed({
  //   List<String>? filter,
  //   List<String>? remove,
  //   List<String>? include,
  //   int? limit,
  //   int? since,
  //   String? descriptionType,
  //   int? after,
  //   int? page,
  //   int? itemsPerPage,
  // }) async {
  //   final data = await _http.getFeed(
  //     filter: filter,
  //     remove: remove,
  //     include: include,
  //     limit: limit,
  //     since: since,
  //     descriptionType: descriptionType,
  //     after: after,
  //     page: page,
  //     itemsPerPage: itemsPerPage,
  //   );

  // todo: troubles with typing
  // }

  Future<List<int>> getYears() {
    return _http.getYears();
  }

  Future<List<String>> getGenres() {
    return _http.getGenres();
  }

  Future<Team> getTeam() async {
    final data = await _http.getTeam();
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
    final data = await _http.getTorrentSeedStats(
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
}
