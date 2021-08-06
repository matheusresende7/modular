import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

/*class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modular',
      theme: ThemeData.dark(),
      initialRoute: '/',
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}*/

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Modular',
      debugShowCheckedModeBanner: false,
      /*theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
      initialBinding: AppBinding(),*/
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}