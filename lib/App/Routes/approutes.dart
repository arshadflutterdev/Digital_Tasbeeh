import 'package:get/get.dart';
import 'package:tasbeeh/App/Ui/homepage.dart';
import 'package:tasbeeh/App/Ui/splashscreen.dart';

class AppRoutes {
  static const String splashscreen = '/splash';
  static const String tasbih = "/tasbih";
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.splashscreen, page: () => SplashScreen()),
    GetPage(name: AppRoutes.tasbih, page: () => SimpleDigitalTasbih()),
  ];
}
