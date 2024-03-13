import 'package:get/get.dart';

import '../controllers/advert_show_case_controller.dart';

class AdvertShowCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertShowCaseController>(
      () => AdvertShowCaseController(),
    );
  }
}
