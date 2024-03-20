import 'package:get/get.dart';

class RewardsHubController extends GetxController {
  //TODO: Implement RewardsHubController
  final List<List<dynamic>> dynamicData = [
    [
      '01',
      '12/09/2023',
      'Trilok',
      'Free Hair Cut',
      '5 Points',
      '2 Rewards'
    ],
    [
      '01',
      '12/09/2023',
      'Aman',
      'Free Hair Cut',
      '9 Points',
      '1 Rewards'
    ],

    [
      '01',
      '12/09/2023',
      'Pankaj',
      'Free Hair Cut',
      '15 Points',
      '5 Rewards'
    ],




    // Add more dynamic data rows as needed
  ];

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
