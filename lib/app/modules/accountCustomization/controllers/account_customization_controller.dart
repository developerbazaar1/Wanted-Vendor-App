import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wanted/app/data/apiConstant.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/tokenManagement.dart';

class AccountCustomizationController extends GetxController {
  TextEditingController oldPasswordC = TextEditingController();
  TextEditingController newPasswordC = TextEditingController();
  TextEditingController conformPasswordC = TextEditingController();

  Future updatePassword() async {
    // print(await TokenStorage.getToken());
    // print(await UserIdStorage.getUserId());
    String? token = await TokenStorage.getToken();
    String? userId = await UserIdStorage.getUserId();
    // print(token);
    try {
      final response = await http
          .put(Uri.parse('${BASE_URL}provider/update/profile'), headers: {
        'Authorization': token!
      }, body: {
        "password": oldPasswordC.text,
        "newPassword": newPasswordC.text,
        "confirmnewPassword": conformPasswordC.text,
        "_id": userId
      });

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);

        Get.snackbar(
          'message',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Password Changed',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.green,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['message'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.green,
          ),
          // backgroundColor: Colors.red,
          colorText: Colors.red,
        );
      } else if (response.statusCode == 400) {
        final jsonResponse = jsonDecode(response.body);
        Get.snackbar(
          'message',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Password Not Match',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.red,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['message'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
          // backgroundColor: Colors.red,
          colorText: Colors.red,
        );
      }
      print(response.body);
      print(response.statusCode);
    } catch (e) {
      print('dsdddddd');
      print(e);
    }
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
