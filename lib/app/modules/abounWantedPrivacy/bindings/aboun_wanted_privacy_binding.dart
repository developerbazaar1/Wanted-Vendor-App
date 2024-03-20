import 'package:get/get.dart';

import '../controllers/aboun_wanted_privacy_controller.dart';

class AbounWantedPrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbounWantedPrivacyController>(
      () => AbounWantedPrivacyController(),
    );
  }
}
