import 'package:get/get.dart';

import '../controllers/edit_advert_controller.dart';

class EditAdvertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAdvertController>(
      () => EditAdvertController(),
    );
  }
}
