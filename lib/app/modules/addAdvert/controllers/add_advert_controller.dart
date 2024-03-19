import 'package:get/get.dart';
import 'package:wanted/app/modules/addAdvert/models/selectPlanModel.dart';

class AddAdvertController extends GetxController {

List<SelectPlan> planList =[
  SelectPlan('assets/images/startPlanIcon.png','Starter Plan','£399','3 Ads','3 Days'),
  SelectPlan('assets/images/startPlanPreIcon.png','Premium Plan','£699','5 Ads','5 Days'),
  SelectPlan('assets/images/startPlanProIcon.png','Pro Plan','£999','15 Ads','15 Days'),
];
RxInt isSelectedPlanIndex = (-1).obs;
RxString  selectedPlanButton = ''.obs;




  void setSelectedPlan(int index){

    isSelectedPlanIndex.value = index;

  }

  //TODO: Implement AddAdvertController

// DropDownItemForNumberOfProDucts
  List<String> dropdownItems = ['1', '2', '3'];

  //--------------------------------------------------------------------------------------------

  List<String> categoryItems = ['Item1', 'Item2', 'Item3',];
  List<String> subCategoryItems = ['Item1', 'Item2', 'Item3',];
  List<String> subSubCategoryItems = ['Item1', 'Itemsdfsdfs2', 'Itemdfdsf3','dfsdfsdfsdf','dsfsdfsdfsdfsf'];
//---------------------------------------------------------------------


  RxString selectedOption = ''.obs;
  void setSelectedOption(String option) {
    selectedOption.value = option;
    print(option);
  }



  RxInt errorSnapshot = 0.obs; // Observable to track error state
  final RxBool showDropdown = false.obs;
  final RxString selectedItem = ''.obs;


  RxString selectNumberOfProduct = ''.obs;
  void setNumberOfProduct(String numberOfProduct) {
    selectNumberOfProduct.value = numberOfProduct;
    print("Selected category: $numberOfProduct");
  }





  RxBool selectedOptionForProduct = false.obs;
  void setSelectedOptionForProduct(bool option) {
    selectedOptionForProduct.value = option;
    print(selectedOptionForProduct.value);
  }

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
