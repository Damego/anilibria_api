import 'dart:convert';

import 'package:anilibria_api/consts.dart';
import 'package:anilibria_api/types.dart';
import 'package:http/http.dart' as http;
import 'package:anilibria_api/src/http/base_http.dart';

class AnilibriaHttpClient extends BaseHttpClient {
  AnilibriaHttpClient() : super(apiUrl);

  Future<Dict> getTitle({
    String? id,
    String? code,
    int? torrentId,
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
  }) async {
    var payload = {
      "id": id,
      "code": code,
      "torrent_id": torrentId,
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType
    };
    return await super.request("GET", "/v3/title", params: payload) as Dict;
  }

  Future<Dict> getTitleList({
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
    var payload = {
      "id_list": idList,
      "code_list": codeList,
      "torrent_id_list": torrentIdList,
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/title/list", params: payload)
        as Dict;
  }

  Future<Dict> getTitleUpdates({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    int? limit,
    int? since,
    String? descriptionType,
    int? page,
    int? itemsPerPage,
  }) async {
    var payload = {
      "filter": filter,
      "remove": remove,
      "include": include,
      "limit": limit,
      "since": since,
      "description_type": descriptionType,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/title/updates", params: payload)
        as Dict;
  }

  Future<Dict> getTitleChanges({
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
    var payload = {
      "filter": filter,
      "remove": remove,
      "include": include,
      "limit": limit,
      "since": since,
      "description_type": descriptionType,
      "after": after,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/title/changes", params: payload)
        as Dict;
  }

  Future<List<Dict>> getSchedule({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    List<int>? days,
    String? descriptionType,
  }) async {
    var payload = {
      "filter": filter,
      "remove": remove,
      "include": include,
      "days": days,
      "description_type": descriptionType,
    };
    return await super.request("GET", "/v3/title/schedule", params: payload)
        as List<Dict>;
  }

  Future<Dict> getRandomTitle({
    List<String>? filter,
    List<String>? remove,
    List<String>? include,
    String? descriptionType,
  }) async {
    var payload = {
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType,
    };
    return await super.request("GET", "/v3/title/random", params: payload)
        as Dict;
  }

  Future<List<Dict>> getYoutube({
    List<String>? filter,
    List<String>? remove,
    int? limit,
    int? since,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    var payload = {
      "filter": filter,
      "remove": remove,
      "limit": limit,
      "since": since,
      "after": after,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/youtube", params: payload)
        as List<Dict>;
  }

  Future<Dict> getFeed({
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
    var payload = {
      "filter": filter,
      "remove": remove,
      "include": include,
      "limit": limit,
      "since": since,
      "description_type": descriptionType,
      "after": after,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/feed", params: payload) as Dict;
  }

  Future<List<int>> getYears() async {
    List<dynamic> years =
        await super.request("GET", "/v3/years") as List<dynamic>;
    return [for (var year in years) year as int];
  }

  Future<List<String>> getGenres() async {
    List<dynamic> genres =
        await super.request("GET", "/v3/genres") as List<dynamic>;
    return [for (var genre in genres) genre as String];
  }

  Future<Dict> searchTitles({
    List<String>? search,
    List<int>? years,
    List<String>? types, // what's?
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
    var payload = {
      "search": search,
      "year": years,
      "type": types,
      "season_code": seasonCode,
      "genres": genres,
      "team": team,
      "voice": voice,
      "translator": translator,
      "editing": editing,
      "decor": decor,
      "timing": timing,
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType,
      "limit": limit,
      "after": after,
      "orderBy": orderBy,
      "sort_direction": sortDirection,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/title/search", params: payload)
        as Dict;
  }

  Future<Dict> searchTitlesAdvanced({
    String? query, // required
    String? simpleQuery, // req
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
    var payload = {
      "query": query,
      "simple_query": simpleQuery,
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType,
      "limit": limit,
      "after": after,
      "orderBy": orderBy,
      "sort_direction": sortDirection,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super
        .request("GET", "/v3/title/search/advanced", params: payload) as Dict;
  }

  Future<Dict> getTitleFranchise(
    int titleId, {
    List<String>? filter,
    List<String>? remove,
  }) async {
    var payload = {
      "id": titleId,
      "filter": filter,
      "remove": remove,
    };
    return await super.request("GET", "/v3/title/franchises", params: payload)
        as Dict;
  }

  Future<Dict> getAllFranchises({
    List<String>? filter,
    List<String>? remove,
    int? limit,
    int? after,
    int? page,
    int? itemsPerPage,
  }) async {
    var payload = {
      "filter": filter,
      "remove": remove,
      "limit": limit,
      "after": after,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3//franshise/list", params: payload)
        as Dict;
  }

  Future<Dict> getTeam() async {
    return await super.request("GET", "/v3/team") as Dict;
  }

  Future<Dict> getTorrentSeedStats({
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
    var payload = {
      "users": users,
      "filter": filter,
      "remove": remove,
      "limit": limit,
      "after": after,
      "sortBy": sortBy,
      "order": order,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await super.request("GET", "/v3/torrent/seed_stats", params: payload)
        as Dict;
  }

  // todo: add support for /torrent/rss endpoint

  Future<String> signIn(String login, String password) async {
    // todo: make own http client
    var res = await http.post(
        Uri.parse("https://www.anilibria.tv/public/login.php"),
        body: {'mail': login, "password": password});

    var data = jsonDecode(res.body);
    return data["session_id"];
  }

  Future<Dict> getUser(String sessionId) async {
    return await request("GET", "/v3/user", params: {"session": sessionId})
        as Dict;
  }

  Future<Dict> getUserFavorites(String sessionId,
      {List<String>? filter,
      List<String>? remove,
      List<String>? include,
      String? descriptionType,
      int? limit,
      int? after,
      int? page,
      int? itemsPerPage}) async {
    var payload = {
      "session": sessionId,
      "filter": filter,
      "remove": remove,
      "include": include,
      "description_type": descriptionType,
      "limit": limit,
      "after": after,
      "page": page,
      "items_per_page": itemsPerPage,
    };
    return await request("GET", "/v3/user/favorites", params: payload) as Dict;
  }

  Future<Dict> addUserFavoriteTitle(String sessionId, int titleId) async {
    Dict payload = {
      "session": sessionId,
      "title_id": titleId,
    };
    return await request("PUT", "/v3/user/favorites", params: payload) as Dict;
  }

  Future<Dict> removeUserFavoriteTitle(String sessionId, int titleId) async {
    Dict payload = {
      "session": sessionId,
      "title_id": titleId,
    };
    return await request("DELETE", "/v3/user/favorites", params: payload)
        as Dict;
  }
}
