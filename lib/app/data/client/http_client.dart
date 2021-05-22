import 'dart:convert';

import 'package:flutter_arch/app/data/client/ihttp_client.dart';
import 'package:http/http.dart' as http;

class HttpClient implements IHttpClient {
  final httpClient = http.Client();

  @override
  Future get(String path) async {
    final response = await httpClient.get(Uri.parse(path));

    return jsonDecode(response.body);
  }
}
