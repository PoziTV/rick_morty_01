import 'package:dio/dio.dart';
import 'package:rick_morty_01/data/dio_settings.dart';

import 'network/models/heroes_model.dart';

class ServiceApi {
  static ServiceApi _instance = new ServiceApi.internal();

  factory ServiceApi() => _instance;

  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  late DioSettings _dioSettings;
  late Dio _dio;

  late Map<String, dynamic> _request;

  Future<HeroesModel> getCharacters() async {
    Map<String, dynamic> _queryParameters = {"PageNumber": 1, "PageSize": 100};

    final response = await _dio.get(
      "Characters/GetAll",
      queryParameters: _queryParameters,
    );
    print(response);
    return heroesModelFromJson(response.toString());
  }
}
