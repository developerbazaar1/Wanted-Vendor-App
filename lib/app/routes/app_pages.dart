import 'package:get/get.dart';

import 'package:wanted/app/modules/abounWantedPrivacy/bindings/aboun_wanted_privacy_binding.dart';
import 'package:wanted/app/modules/abounWantedPrivacy/views/aboun_wanted_privacy_view.dart';
import 'package:wanted/app/modules/accountCustomization/bindings/account_customization_binding.dart';
import 'package:wanted/app/modules/accountCustomization/views/account_customization_view.dart';
import 'package:wanted/app/modules/addAdvert/bindings/add_advert_binding.dart';
import 'package:wanted/app/modules/addAdvert/views/add_advert_view.dart';
import 'package:wanted/app/modules/advertPreview/bindings/advert_preview_binding.dart';
import 'package:wanted/app/modules/advertPreview/views/advert_preview_view.dart';
import 'package:wanted/app/modules/advertShowCase/bindings/advert_show_case_binding.dart';
import 'package:wanted/app/modules/advertShowCase/views/advert_show_case_view.dart';
import 'package:wanted/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:wanted/app/modules/bottombar/views/bottombar_view.dart';
import 'package:wanted/app/modules/buySubscription/bindings/buy_subscription_binding.dart';
import 'package:wanted/app/modules/buySubscription/views/buy_subscription_view.dart';
import 'package:wanted/app/modules/customerInquiries/bindings/customer_inquiries_binding.dart';
import 'package:wanted/app/modules/customerInquiries/views/customer_inquiries_view.dart';
import 'package:wanted/app/modules/editAdvert/bindings/edit_advert_binding.dart';
import 'package:wanted/app/modules/editAdvert/views/edit_advert_view.dart';
import 'package:wanted/app/modules/forgetPassword/bindings/forget_password_binding.dart';
import 'package:wanted/app/modules/forgetPassword/views/forget_password_view.dart';
import 'package:wanted/app/modules/helpAndsupport/bindings/help_andsupport_binding.dart';
import 'package:wanted/app/modules/helpAndsupport/views/help_andsupport_view.dart';
import 'package:wanted/app/modules/home/bindings/home_binding.dart';
import 'package:wanted/app/modules/home/views/home_view.dart';
import 'package:wanted/app/modules/login/bindings/login_binding.dart';
import 'package:wanted/app/modules/login/views/login_view.dart';
import 'package:wanted/app/modules/paymentHistory/bindings/payment_history_binding.dart';
import 'package:wanted/app/modules/paymentHistory/views/payment_history_view.dart';
import 'package:wanted/app/modules/payments/bindings/payments_binding.dart';
import 'package:wanted/app/modules/payments/views/payments_view.dart';
import 'package:wanted/app/modules/postAgainAdvert/bindings/post_again_advert_binding.dart';
import 'package:wanted/app/modules/postAgainAdvert/views/post_again_advert_view.dart';
import 'package:wanted/app/modules/profile/bindings/profile_binding.dart';
import 'package:wanted/app/modules/profile/views/profile_view.dart';
import 'package:wanted/app/modules/providerPortfolio/bindings/provider_portfolio_binding.dart';
import 'package:wanted/app/modules/providerPortfolio/views/provider_portfolio_view.dart';
import 'package:wanted/app/modules/qrScanner/bindings/qr_scanner_binding.dart';
import 'package:wanted/app/modules/qrScanner/views/qr_scanner_view.dart';
import 'package:wanted/app/modules/resetPassword/bindings/reset_password_binding.dart';
import 'package:wanted/app/modules/resetPassword/views/reset_password_view.dart';
import 'package:wanted/app/modules/rewardsHub/bindings/rewards_hub_binding.dart';
import 'package:wanted/app/modules/rewardsHub/views/rewards_hub_view.dart';
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
      bindings: [
        BottombarBinding(),
        HomeBinding(),
        AddAdvertBinding(),
        PaymentsBinding()
      ],
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
    GetPage(
      name: _Paths.PROVIDER_PORTFOLIO,
      page: () => ProviderPortfolioView(),
      binding: ProviderPortfolioBinding(),
    ),
    GetPage(
      name: _Paths.POST_AGAIN_ADVERT,
      page: () => PostAgainAdvertView(),
      binding: PostAgainAdvertBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADVERT,
      page: () => EditAdvertView(),
      binding: EditAdvertBinding(),
    ),
    GetPage(
      name: _Paths.ADVERT_PREVIEW,
      page: () => AdvertPreviewView(),
      binding: AdvertPreviewBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_INQUIRIES,
      page: () => CustomerInquiriesView(),
      binding: CustomerInquiriesBinding(),
    ),
    GetPage(
      name: _Paths.REWARDS_HUB,
      page: () => RewardsHubView(),
      binding: RewardsHubBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_HISTORY,
      page: () => PaymentHistoryView(),
      binding: PaymentHistoryBinding(),
    ),
    GetPage(
      name: _Paths.ABOUN_WANTED_PRIVACY,
      page: () => AbounWantedPrivacyView(),
      binding: AbounWantedPrivacyBinding(),
    ),
    GetPage(
      name: _Paths.HELP_ANDSUPPORT,
      page: () => HelpAndsupportView(),
      binding: HelpAndsupportBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT_CUSTOMIZATION,
      page: () => AccountCustomizationView(),
      binding: AccountCustomizationBinding(),
    ),
    GetPage(
      name: _Paths.BUY_SUBSCRIPTION,
      page: () => BuySubscriptionView(),
      binding: BuySubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.QR_SCANNER,
      page: () => QrScannerView(),
      binding: QrScannerBinding(),
    ),
  ];
}
