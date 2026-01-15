enum PicturesEnum {
  dpuLogo('logo'),
  ataturk('ataturk'),
  background('background'),
  dpu('dpu'),
  ddyo('ddyo'),
  ;

  const PicturesEnum(this.value);

  final String value;

  String get pngPath => 'assets/images/picture/$value.png';
}
