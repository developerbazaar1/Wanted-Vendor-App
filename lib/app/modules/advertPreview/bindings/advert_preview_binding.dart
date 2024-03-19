import 'package:get/get.dart';

import '../controllers/advert_preview_controller.dart';

class AdvertPreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertPreviewController>(
      () => AdvertPreviewController(),
    );
  }
}
