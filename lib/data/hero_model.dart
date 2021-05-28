class HeroModel {
  final String name;
  final String aliveStatus;
  final String bio;
  final String sex;
  final String ava;
  final int heroId;
  final String description;
  final String birthPlace;
  final String location;

  HeroModel(
      {this.birthPlace = "-",
      this.location = "-",
      this.description = "-",
      this.name = "-",
      // this.aliveStatus = "живой",
      // this.bio = "человек",
      // this.sex = "мужской",
      // this.ava = "",
      this.aliveStatus = "-",
      this.bio = "-",
      this.sex = "-",
      this.ava = "",
      this.heroId = 0});
}
