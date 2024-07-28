import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

import '../repositories/api_manager.dart';
import '../../locator.dart';
import '../repositories/app_db_manager.dart';

extension NavigationExtension on BuildContext {
  pushNamed(String routeName, {dynamic arguments}) =>
      Navigator.of(this).pushNamed(routeName, arguments: arguments);

  pushReplacementName(String routeName, {dynamic arguments}) =>
      Navigator.pushReplacementNamed(
        this,
        routeName,
      );
}

extension GetInstantExtension on GetIt {
  ApiManager get apiManager => locator<ApiManager>();

  AppDbManager get appDbManager => locator<AppDbManager>();
}
