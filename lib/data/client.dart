


import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project/resources/logger.dart';


abstract class EclipseApi {
  late final Dio client;

  EclipseApi(this.client);
}

const _baseUrl = 'https://jsonplaceholder.typicode.com/';

@LazySingleton(as: EclipseApi)
class EclipseApiImpl implements EclipseApi {
  @override
  late final Dio client;

  EclipseApiImpl() {
    client = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
      ),
    );

    client.interceptors
      .add(ErrorHandleInterceptor());
  }
}


class ErrorHandleInterceptor implements Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    Log.error(err.toString());
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != 200) {
      Log.error('Error code: ${response.statusCode}');
    }

    handler.next(response);
  }
}