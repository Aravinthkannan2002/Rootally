import 'package:get/get.dart';

import '../modules/assesmenthealth/bindings/assesmenthealth_binding.dart';
import '../modules/assesmenthealth/views/assesmenthealth_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ASSESMENTHEALTH,
      page: () => AssesmenthealthView(),
      binding: AssesmenthealthBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
  ];
}
