import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertShowCaseController extends GetxController {
  //TODO: Implement AdvertShowCaseController

final List<List<dynamic>> dynamicData = [
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'Active',
    'Manage Avert',
    false, // Change 'togalbutton' to true
  ],
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'Active',
    'Manage Avert',
    true, // Change 'togalbutton' to true
  ],
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'No',
    'Manage Avert',
    false, // Change 'togalbutton' to false
  ],
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'Active',
    'Manage Avert',
    true, // Change 'togalbutton' to true
  ],
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'No',
    'Manage Avert',
    false, // Change 'togalbutton' to false
  ],
  [
    '01',
    'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',
    'Live Ads',
    '£39.99',
    '12/09/2023',
    '12/09/2023',
    'Active',
    'Manage Avert',
    true, // Change 'togalbutton' to true
  ],
  // Add more dynamic data rows as needed
];
final Map<String, IconData> valueIconMap = {
  'Preview': Icons.preview,
  'Post Again': Icons.mobile_screen_share_outlined,
  'Edit Advert': Icons.edit,
  'Delete': Icons.delete,
};


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
}
