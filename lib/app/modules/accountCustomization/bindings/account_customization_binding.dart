import 'package:get/get.dart';

import '../controllers/account_customization_controller.dart';

class AccountCustomizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountCustomizationController>(
      () => AccountCustomizationController(),
    );
  }
}
