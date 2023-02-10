import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final Future<String> Function() getToken;

  AuthInterceptor({required this.getToken});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] = 'Bearer ${await getToken()}';
    handler.next(options);
  }
}
