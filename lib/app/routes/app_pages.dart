import 'package:get/get.dart';

import 'package:wanted/app/modules/addAdvert/bindings/add_advert_binding.dart';
import 'package:wanted/app/modules/addAdvert/views/add_advert_view.dart';
import 'package:wanted/app/modules/advertShowCase/bindings/advert_show_case_binding.dart';
import 'package:wanted/app/modules/advertShowCase/views/advert_show_case_view.dart';
import 'package:wanted/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:wanted/app/modules/bottombar/views/bottombar_view.dart';
import 'package:wanted/app/modules/home/bindings/home_binding.dart';
import 'package:wanted/app/modules/home/views/home_view.dart';
import 'package:wanted/app/modules/login/bindings/login_binding.dart';
import 'package:wanted/app/modules/login/views/login_view.dart';
import 'package:wanted/app/modules/payments/bindings/payments_binding.dart';
import 'package:wanted/app/modules/payments/views/payments_view.dart';
import 'package:wanted/app/modules/profile/bindings/profile_binding.dart';
import 'package:wanted/app/modules/profile/views/profile_view.dart';
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
      bindings: [BottombarBinding(), HomeBinding()],
    ),
    GetPage(
      name: _Paths.ADD_ADVERT,
      page: () => AddAdvertView(),
      binding: AddAdvertBinding(),
    ),
    GetPage(
      name: _Paths.ADVERT_SHOW_CASE,
      page: () => AdvertShowCaseView(),
      binding: AdvertShowCaseBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENTS,
      page: () => PaymentsView(),
      binding: PaymentsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
