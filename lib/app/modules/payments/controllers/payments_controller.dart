import 'package:get/get.dart';

class PaymentsController extends GetxController {
  //TODO: Implement PaymentsController
  final List<List<dynamic>> dynamicData = [
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      '\$ 39.99',
      'Received',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      '\$ 9.99',
      'Canceled',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      '\$ 9.99',
      'Received',
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
