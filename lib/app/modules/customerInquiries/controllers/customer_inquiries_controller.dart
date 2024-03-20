import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerInquiriesController extends GetxController {
  //TODO: Implement CustomerInquiriesController
  final List<List<dynamic>> dynamicData = [
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      'Face massage',
      'See inquiry Details',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      'Face massage',
      'See inquiry Details',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      'Face massage',
      'See inquiry Details',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      'Face massage',
      'See inquiry Details',
    ],
    [
      '01',
      '12/09/2023',
      'Beauty & Spa',
      'Face massage',
      'See inquiry Details',
    ],
    // Add more dynamic data rows as needed
  ];
  final Map<String, IconData> valueIconMap = {
    'Preview': Icons.preview,
    'Post Again': Icons.mobile_screen_share_outlined,
    'Edit Advert': Icons.edit,
    'Delete': Icons.delete,
  };
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
