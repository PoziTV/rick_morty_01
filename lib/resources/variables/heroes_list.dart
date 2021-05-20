import 'package:rick_morty_01/data/hero_model.dart';
import 'package:rick_morty_01/resources/variables/heroes_avatars.dart';

List<HeroModel> HeroesList = [
  HeroModel(
    name: "Директор Агентства",
    aliveStatus: "ЖИВОЙ",
    sex: "Мжской",
    bio: "Человек",
    ava: HeroesAvatars.Director,
    heroId: 1,
  ),
  HeroModel(
    name: "Рик Санчез",
    aliveStatus: "ЖИВОЙ",
    sex: "Мужской",
    bio: "Человек",
    ava: HeroesAvatars.Rick,
    heroId: 2,
  ),
  HeroModel(
    name: "Морти Смит",
    aliveStatus: "ЖИВОЙ",
    sex: "Мужской",
    bio: "Человек",
    ava: HeroesAvatars.Morty,
    heroId: 3,
  ),
  HeroModel(
    name: "Саммер Смит",
    aliveStatus: "ЖИВОЙ",
    sex: "Женский",
    bio: "Человек",
    ava: HeroesAvatars.Summer,
    heroId: 4,
  ),
  HeroModel(
    name: "Альберт Эйнштейн",
    aliveStatus: "МЕРТВЫЙ",
    sex: "Мужской",
    bio: "Человек",
    ava: HeroesAvatars.Albert,
    heroId: 5,
  ),
  HeroModel(
    name: "Алан Райлс",
    aliveStatus: "МЕРТВЫЙ",
    sex: "Мужской",
    bio: "Человек",
    ava: HeroesAvatars.Alan,
    heroId: 6,
  ),
];
