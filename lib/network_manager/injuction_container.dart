import 'package:dio/dio.dart';
import 'dart:convert';

Dio getDio() {
  Dio dio = Dio();

  dio.interceptors
      .add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
    print("API URL: ${options.uri}");
    print("Header: ${options.headers}");
    print("RequestBody: ${jsonEncode(options.data)}");
    return handler.next(options);
  },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
    print("APi Response ${response.data}");
    return handler.next(response);
  },

      onError: (DioException e, handler) {
    print("Status code ${e.response?.statusCode}");
    print("Error data ${e.response?.data}");
    if (e.response?.statusCode == 401) {
    } else if (e.response?.statusCode == 400) {}
    return handler.next(e);
  }));
  return dio;
}
