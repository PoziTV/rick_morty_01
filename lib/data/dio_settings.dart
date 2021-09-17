import 'package:dio/dio.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

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
                requestOptions: response.requestOptions,
                error: "Отсутствуют данные",
                response: Response(
                  requestOptions: response.requestOptions,
                  statusCode: 400,
                  // request: response.request, // в dio 4 отсутствует такой параметр в классе Response
                ),
              );
            }
            return handler.next(response);
          },
          onError: (DioError err, handler) async {
            if (err.type == DioErrorType.connectTimeout) {
              // время отведенное запросу истекло
              print('connectTimeout');
            } else if (err.message.contains('SocketException:')) {
              // нет инета
              print('SocketException');
            } else if (err.response!.statusCode == 401) {
              // ошибка индентификации / доступа к ресурсам сервера
              print('statusCode = 401');
            }

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
