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
                "https://403.online/static/media/phone.5807f7346a6bb083a368.png",
            title: "چاستان لار",
            text:
                "بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم",
            date: "مهربان آذر",
            news: [3, 6, 5],
          ),
        );

      default:
        throw const FormatException('Route not found!');
    }
  }
}
