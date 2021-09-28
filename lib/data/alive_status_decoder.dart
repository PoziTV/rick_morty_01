String AliveStatusDecoder(int? status) {
  String aliveStatus;

  switch (status) {
    case 0:
      aliveStatus = 'живой';
      break;
    case 1:
      aliveStatus = 'мертвый';
      break;
    case 2:
      aliveStatus = 'неизвестно';
      break;
    default:
      aliveStatus = 'неизвестно';
  }

  return aliveStatus;
}
