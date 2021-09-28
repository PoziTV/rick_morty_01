import 'package:dio/dio.dart';
import 'package:rick_morty_01/data/dio_settings.dart';
import 'package:rick_morty_01/data/network/models/hero_net_model.dart';

import 'package:rick_morty_01/data/network/models/heroes_net_model.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';

class ServiceApi {
  static ServiceApi _instance = new ServiceApi.internal();

  factory ServiceApi() => _instance;

  ServiceApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  late DioSettings _dioSettings;
  late Dio _dio;

  // late Map<String, dynamic> _request; // кэш ??

  Future<List<HeroModel>> getAllHeroes() async {
    Map<String, dynamic> _queryParameters = {"PageNumber": 1, "PageSize": 100};

    final response = await _dio.get(
      "Characters/GetAll",
      queryParameters: _queryParameters,
    );

    // print('ServiceApi получила $response');
    List<HeroModel> heroesList;
    String responseToString = response.toString();

    try {
      HeroesNetModel heroesListFromJson =
          heroesNetModelFromJson(responseToString);
      heroesList = heroesListFromJson.heroesList;
    } catch (err) {
      print('ServiceApi ошибка heroesNetModelFromJson(myStr)');
      heroesList = [];
    }

    print('heroesList  $heroesList');

    return heroesList;
  }

  Future<HeroModel> getHeroById(String id) async {
    Map<String, dynamic> _queryParameters = {"Id": id};

    final response = await _dio.get(
      "Characters/GetById",
      queryParameters: _queryParameters,
    );

    print('ServiceApi getHeroById получила $response');

    HeroModel? heroById;
    String responseToString = response.toString();

    try {
      HeroNetModel heroByIdFromJson = heroNetModelFromJson(responseToString);
      heroById = heroByIdFromJson.hero;
    } catch (err) {
      print('ServiceApi getHeroById ошибка heroNetModelFromJson(myStr)');
      heroById = null;
    }
    if (heroById == null) throw ('heroById is null');

    print('heroesList  $heroById');

    return heroById;
  }
}
