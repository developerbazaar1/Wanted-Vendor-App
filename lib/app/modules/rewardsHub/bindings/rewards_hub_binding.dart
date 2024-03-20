import 'package:get/get.dart';

import '../controllers/rewards_hub_controller.dart';

class RewardsHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RewardsHubController>(
      () => RewardsHubController(),
    );
  }
}
