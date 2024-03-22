import 'package:get/get.dart';

import '../controllers/buy_subscription_controller.dart';

class BuySubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuySubscriptionController>(
      () => BuySubscriptionController(),
    );
  }
}
