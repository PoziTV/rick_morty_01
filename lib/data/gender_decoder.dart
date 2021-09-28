String GenderDecoder(int? genderStatus) {
  String gender;

  switch (genderStatus) {
    case 0:
      gender = 'мужской';
      break;
    case 1:
      gender = 'женский';
      break;
    case 2:
      gender = 'неизвестно';
      break;
    default:
      gender = 'неизвестно';
  }

  return gender;
}
