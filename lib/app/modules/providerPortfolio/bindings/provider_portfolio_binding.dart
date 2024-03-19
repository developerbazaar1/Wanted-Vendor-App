import 'package:get/get.dart';

import '../controllers/provider_portfolio_controller.dart';

class ProviderPortfolioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderPortfolioController>(
      () => ProviderPortfolioController(),
    );
  }
}
