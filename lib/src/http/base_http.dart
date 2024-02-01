import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:anilibria_api/src/http/converters.dart';

class HttpException implements Exception {
  final int code;
  final String message;

  HttpException(this.code, this.message);

  @override
  String toString() => "HttpException(code: $code, message: $message)";
}

class BaseHttpClient {
  final http.Client _client;
  final String _baseUrl;

  BaseHttpClient(this._baseUrl) : _client = http.Client();

  Map<String, dynamic> _normalizePayload(Map<String, dynamic> dict) {
    dict.removeWhere((key, value) => value == null);
    return dict.map((key, value) => MapEntry(key, stringifyObject(value)));
  }

  Future<Object> request(String method, String path,
      {Map<String, dynamic>? params, Map<String, dynamic>? data}) async {
    Uri url;
    if (params != null) {
      url = Uri.https(_baseUrl, path, _normalizePayload(params));
    } else {
      url = Uri.https(_baseUrl, path);
    }
    http.Response? response;

    if (method == "GET") {
      response = await _client.get(url);
    } else if (method == "POST") {
      response = await _client.post(url, body: data);
    } else if (method == "PUT") {
      response = await _client.put(url, body: data);
    } else if (method == "DELETE") {
      response = await _client.delete(url, body: data);
    }

    if (response == null) {
      throw Exception("no res");
    }

    var decodedData = jsonDecode(response.body);
    catchError(decodedData);
    return decodedData;
  }

  void catchError(dynamic data) {
    if (data is Map && data["error"] != null) {
      throw HttpException(data["error"]["code"], data["error"]["message"]);
    }
  }
}
