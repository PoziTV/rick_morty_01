import 'package:dio/dio.dart';

class DioSettings {
  DioSettings();

  // static final mainServer = "https://api.???.kz/";
  static final mainServer = "http://173.249.20.184:7001/api/";

  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;

    interceptors.requestLock.lock();
    interceptors.clear();
    interceptors
      ..add(
        InterceptorsWrapper(
          onResponse: (response, handler) {
            if (response.statusCode == 204) {
              throw DioError(
                requestOptions: dio.options,
                error: "Отсутствуют данные",
                response: Response(
                  statusCode: 400,
                  // request: response.request,
                ),
              );
            }
            return handler.next(response);
          },
          onError: (DioError err, handler) {
            return handler.next(err);
          },
        ),
      )
      ..add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
        ),
      );

    interceptors.requestLock.unlock();
  }
}
