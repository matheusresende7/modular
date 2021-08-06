import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:modular/src/modules/home/views/home.dart';
import 'package:modular/src/modules/settings/views/settings.dart';

class AppRoutes {

  static const String initialRoute = '/';

  static List<GetPage> pages = [

    getPageRightToLeft(
      name: '/',
      page: () => Home(),
    ),

    getPageDownToUp(
      name: '/Settings',
      page: () => Settings(),
    ),

    /*GetPage(name: SplashPage.routeName, page: () => SplashPage()),
    GetPage(name: InitialPage.routeName, page: () => InitialPage()),
    GetPage(name: LoadingPage.routeName, page: () => LoadingPage()),
    GetPage(name: HomePage.routeName, page: () => HomePage()),
    GetPage(
      name: SignupPage.ROUTE_NAME,
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),
    GetPage(
        name: ForgotPasswordPage.ROUTE_NAME,
        page: () => ForgotPasswordPage()
    ),
    GetPage(
        name: LoginPage.ROUTE_NAME,
        page: () => LoginPage(),
        binding: LoginBinding()
    ),*/

  ];

}

GetPage getPageRightToLeft ({
  String name,
  Widget Function() page,
}) {
  return GetPage(
    name: name,
    page: page,
    transition: Transition.rightToLeft,
    transitionDuration: Duration(milliseconds: 700),
  );
}

GetPage getPageDownToUp ({
  String name,
  Widget Function() page,
}) {
  return GetPage(
    name: name,
    page: page,
    transition: Transition.downToUp,
    transitionDuration: Duration(milliseconds: 700),
  );
}