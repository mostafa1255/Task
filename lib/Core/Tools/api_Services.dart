import 'package:dio/dio.dart';

class ApiServeces {
  final _baseurl = "https://jsonplaceholder.typicode.com";
  final Dio dio;

  ApiServeces(this.dio);

  Future<dynamic> get({required String endpoint}) async {
    var response = await dio.get("$_baseurl$endpoint");
    return response.data;
  }
}
