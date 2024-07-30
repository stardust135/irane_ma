import 'package:irane_ma/core/utils/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'locator.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/blocs/app_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await setupLocator();
  await Hive.initFlutter();
  await locator.appDbManager.initValues();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(locator()),
        ),
      ],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
            ),
            initialRoute: Routes.homeScreen,
            onGenerateRoute: Routes.generateRoute,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('fa', 'IR'),
            ],
          );
        },
      ),
    );
  }
}
