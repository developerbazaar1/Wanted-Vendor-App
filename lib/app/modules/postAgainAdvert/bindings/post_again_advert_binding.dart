import 'package:get/get.dart';

import '../controllers/post_again_advert_controller.dart';

class PostAgainAdvertBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostAgainAdvertController>(
      () => PostAgainAdvertController(),
    );
  }
}
