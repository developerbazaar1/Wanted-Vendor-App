import 'package:get/get.dart';

class ProviderPortfolioController extends GetxController {
  //TODO: Implement ProviderPortfolioController
  List<String> categoryItems = ['Item1', 'Item2', 'Item3',];
  List<String> subCategoryItems = ['Item1', 'Item2', 'Item3',];
  List<String> subSubCategoryItems = ['Item1', 'Itemsdfsdfs2', 'Itemdfdsf3','dfsdfsdfsdf','dsfsdfsdfsdfsf'];
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
