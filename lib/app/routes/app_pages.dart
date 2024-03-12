import 'package:get/get.dart';

import 'package:wanted/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:wanted/app/modules/bottombar/views/bottombar_view.dart';
import 'package:wanted/app/modules/home/bindings/home_binding.dart';
import 'package:wanted/app/modules/home/views/home_view.dart';
import 'package:wanted/app/modules/login/bindings/login_binding.dart';
import 'package:wanted/app/modules/login/views/login_view.dart';
import 'package:wanted/app/modules/signUp/bindings/sign_up_binding.dart';
import 'package:wanted/app/modules/signUp/views/sign_up_view.dart';
import 'package:wanted/app/modules/splashScreen/bindings/splash_screen_binding.dart';
import 'package:wanted/app/modules/splashScreen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
  ];
}
