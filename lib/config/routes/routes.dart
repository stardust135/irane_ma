import 'package:flutter/material.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/news/screens/province_selection.dart';

class Routes {
  static const String homeScreen = '/';
  static const String countyNews = '/countyNews';
  static const String nationalNews = '/nationalNews';
  static const String newsDetails = '/newsDetails';
  static const String provinceSelection = '/provinceSelection';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case countyNews:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case nationalNews:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case newsDetails:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case provinceSelection:
        return MaterialPageRoute(
          builder: (context) => const ProvinceSelection(),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
