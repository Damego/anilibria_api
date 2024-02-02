import 'package:anilibria_api/src/http/base_http.dart';
import 'package:anilibria_api/src/types.dart';

class SiteHttpClient extends BaseHttpClient {
  SiteHttpClient(super._baseUrl);

  Future<String> signIn(String login, String password) async {
    var data = await request("POST", "/public/login.php", data: {
      'mail': login,
      "passwd": password,
    });
    print(data.toString());
    return (data as Dict)["sessionId"] as String;
  }

  @override
  void catchError(dynamic data) {
    if (data is Map && data["err"] != "ok") {
      throw HttpException(400, data["mes"]);
    }
  }
}
