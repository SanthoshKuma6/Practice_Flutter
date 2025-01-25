import 'package:dio/dio.dart';
import 'package:myfirstapp/network_manager/injuction_container.dart';

class DioHelper {
  Dio dio = getDio();
  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    sendTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(seconds: 30),
  );

  Map<String, dynamic> headers = {"Authorization": "Bearer token"};

  /// get api
  Future<dynamic> get({required String url, bool isAuthRequired = false}) async {
    try {
      if (isAuthRequired) {
        options.headers = headers;
      }
      Response response = await dio.get(url, options: options);
      return response.data;
    } catch (e) {
      print("Error in GET request: $e");
      return null; // Or rethrow the exception
    }
  }

}
