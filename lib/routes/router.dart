import 'package:get/get.dart';
import 'package:whats_on_app/screens/bottom_navbar.dart';

import '../screens/home.dart';
import '../screens/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash';
  static const String bottomNavBar = '/bottomNavBar';
  static const String home = '/home';

  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      transition: fadeIn,
    ),
    GetPage(
      name: bottomNavBar,
      page: () => const BottomNavBar(),
      transition: fadeIn,
    ),
    GetPage(
      name: home,
      page: () => const Home(),
      transition: fadeIn,
    ),
  ];
  static const Transition fadeIn = Transition.fadeIn;
}
