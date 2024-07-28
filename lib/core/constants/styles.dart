import 'dart:ui';

class Styles {
  static final _fonts = FontsFamily();

  static final _colors = Colors();

  static FontsFamily get fonts => _fonts;

  static Colors get colors => _colors;
}

class FontsFamily {
  final String yekanBakh = 'YekanBakh';
  final String adobeArabic = 'AdobeArabic';
}

class Colors {
  final Color backGroundColor = const Color(0xffeef2e6);
}
