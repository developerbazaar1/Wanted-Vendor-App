import 'package:get/get.dart';

import '../controllers/help_andsupport_controller.dart';

class HelpAndsupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpAndsupportController>(
      () => HelpAndsupportController(),
    );
  }
}
