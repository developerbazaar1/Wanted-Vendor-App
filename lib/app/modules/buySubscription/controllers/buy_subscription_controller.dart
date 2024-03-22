import 'package:get/get.dart';
import 'package:wanted/app/modules/addAdvert/models/selectPlanModel.dart';

class BuySubscriptionController extends GetxController {
  //TODO: Implement BuySubscriptionController
  List<SelectPlan> planList =[
    SelectPlan('assets/images/startPlanIcon.png','Starter Plan','£399','3 Ads','3 Days'),
    SelectPlan('assets/images/startPlanPreIcon.png','Premium Plan','£699','5 Ads','5 Days'),
    SelectPlan('assets/images/startPlanProIcon.png','Pro Plan','£999','15 Ads','15 Days'),
  ];
  RxInt isSelectedPlanIndex = (-1).obs;
  RxString  selectedPlanButton = ''.obs;
  RxBool isPurched = false.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
