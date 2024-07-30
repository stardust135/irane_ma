import 'package:flutter/material.dart';
import 'package:irane_ma/features/news/screens/news_details.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/news/screens/province_selection.dart';

class Routes {
  static const String homeScreen = '/';
  static const String countySelection = '/countySelection';
  static const String nationalNews = '/nationalNews';
  static const String newsDetails = '/newsDetails';
  static const String provinceSelection = '/provinceSelection';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case countySelection:
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
          builder: (context) => const NewsDetails(
            imageUrl:
                "https://photoshosting.ru/w241h161-hong-kong-g42dd614a1_1280-post-feature-1689853404.jpg",
            title: "چاستان لار",
            text:
                "بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم",
            date: "مهربان آذر",
            news: [3, 6, 5,2,4,6],
          ),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
