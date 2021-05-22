import 'package:dio/dio.dart';
import 'package:flutter_arch/app/data/client/ihttp_client.dart';

class DioClient implements IHttpClient {
  final dio = Dio();

  @override
  Future get(String path) async {
    final response = await dio.get(path);
    return response.data;
  }
}
