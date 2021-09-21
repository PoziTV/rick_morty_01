import 'package:rick_morty_01/data/network/models/heroes_model.dart';
import 'package:rick_morty_01/data/service_api.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<HeroesModel> getAllHeroes() async {
    final _response = await _serviceApi.getAllCharacters();
    return _response;
  }

  // dynamic resp = _serviceApi.getAllCharacters();
}
