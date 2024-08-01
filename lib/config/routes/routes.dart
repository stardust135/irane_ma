import 'package:flutter/material.dart';
import 'package:irane_ma/features/news/screens/channel_info.dart';
import 'package:irane_ma/features/news/screens/news_details.dart';
import 'package:irane_ma/features/news/screens/news_list.dart';

import '../../features/home/screens/home_screen.dart';
import '../../features/news/screens/city_selection.dart';
import '../../features/news/screens/news_details.dart';
import '../../features/news/screens/province_selection.dart';

class Routes {
  static const String homeScreen = '/';
  static const String nationalNews = '/nationalNews';
  static const String newsDetails = '/newsDetails';
  static const String provinceSelection = '/provinceSelection';
  static const String channelInfo = '/channelInfo';
  static const String citySelection = '/citySelection';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case nationalNews:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case newsDetails:
        return MaterialPageRoute(
          builder: (context) => NewsDetails(
            news: (settings.arguments as Map<String, dynamic>)['news'],
          ),
        );
      case channelInfo:
        return MaterialPageRoute(
          builder: (context) => ChannelInfo(
            channelInfo:
                (settings.arguments as Map<String, dynamic>)['channelInfo'],
          ),
        );
      case provinceSelection:
        return MaterialPageRoute(
          builder: (context) => const ProvinceSelection(),
        );
      case citySelection:
        return MaterialPageRoute(
          builder: (context) => const CitySelection(),
        );
      default:
        throw const FormatException('Route not found!');
    }
  }
}
