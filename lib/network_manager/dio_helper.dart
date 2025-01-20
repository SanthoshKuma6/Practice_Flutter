import 'package:dio/dio.dart';

class DioHelper {
  Dio dio = Dio();
  Options options = Options(
      receiveDataWhenStatusError: true,
      contentType: "application/json",
      sendTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10));

  Map<String, dynamic> headers = {"isAuthRequired": "Bearer token"};

  /// get api

  Future<dynamic> get(
      {required String url, bool isAuthRequired = false}) async {
    if (isAuthRequired) {
      options.headers = headers;

      try {
        Response response = await dio.get(url, options: options);
        return response.data;
      } catch (e) {
        return null;
      }
    }
  }
}
