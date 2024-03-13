import 'package:get/get.dart';

import '../controllers/add_advert_controller.dart';

class AddAdvertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdvertController>(
      () => AddAdvertController(),
    );
  }
}
