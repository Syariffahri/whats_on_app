import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'app/theme/app_theme.dart';
import 'routes/router.dart';

/* 
  All originally made by @fahridrus
` Instagram : @fahridrus
  LinkedIn  : Syarif Muhammad Fahri
  GitHub    : https://github.com/Syariffahri
*/

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID', null);
  Intl.defaultLocale = 'id';
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (value) => runApp(const MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
      theme: AppTheme.myTheme,
    );
  }
}
