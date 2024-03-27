import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:vibration/vibration.dart';

class QrScannerController extends GetxController {
  // TODO: Implement QrScannerController
  final qrKey = GlobalKey(debugLabel: 'QR');

  late QRViewController controller;
   var data = ''.obs;

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      print('bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb');

      print(scanData.code);
      // Handle scanned data here
      data.value = scanData.code.toString();
      // print(data.value.toString());
      print(data.value);
      // Vibrate device if data is available
      if (data.value.isNotEmpty) {
        Vibration.vibrate(duration: 200);

      }
      // Update the scanned data state

      print(scanData.code);
      // You can handle the scanned data as per your requirements
    });
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

