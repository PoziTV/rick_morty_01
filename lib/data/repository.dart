
import 'package:rick_morty_01/data/service_api.dart';
import 'package:rick_morty_01/data/view/hero_model.dart';

class Repository {
  final _serviceApi = ServiceApi();

  Future<List<HeroModel>> getAllHeroes() async {
    final _response = await _serviceApi.getAllHeroes();
    print('Repository getAllHeroes отдает $_response');
    return _response;
  }

  Future<HeroModel> getHeroById(String id ) async {
    final _response = await _serviceApi.getHeroById(id);
    print('Repository getHeroeById отдает $_response');
    return _response;
  }

  // dynamic resp = _serviceApi.getAllCharacters();
}
