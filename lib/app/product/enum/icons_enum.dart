enum IconsEnum {
  test(''),
  bus('bus'),
  announcement('announcement'),
  calendar('calendar'),
  circleArrowLeft('circle_arrow_left'),
  danger('danger'),
  eye('eye'),
  home('home'),
  liveBroadcast('live_broadcast'),
  magazine('magazine'),
  map('map'),
  newspaper('newspaper'),
  pause('pause'),
  person('person'),
  personBold('person_bold'),
  schedule('schedule'),
  search('search'),
  sound('sound'),
  telephone('telephone'),
  website('website'),
  ;

  const IconsEnum(this.value);

  final String value;

  String get path => 'assets/images/icon/$value.svg';
}
