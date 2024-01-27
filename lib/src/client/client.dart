import 'package:anilibria_api/src/http/anilibria.dart';
import 'package:anilibria_api/src/models/misc/list_pagination.dart';
import 'package:anilibria_api/src/models/title/title.dart';
import 'package:anilibria_api/src/models/user/user.dart';

class AnilibriaClient {
  final AnilibriaHttpClient _http;

  AnilibriaClient() : _http = AnilibriaHttpClient();

  // * User region

  Future<User> getUser(String sessionId) async {
    var data = await _http.getUser(sessionId);
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
    var data = await _http.getUserFavorites(sessionId,
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
    var data = await _http.getTitle(
        id: id,
        code: code,
        torrentId: torrentId,
        filter: filter,
        remove: remove,
        include: include,
        descriptionType: descriptionType);
    return Title.fromJson(data);
  }

  // * Title end region
}
