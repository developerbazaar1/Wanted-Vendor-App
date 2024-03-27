import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wanted/app/data/apiConstant.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/tokenManagement.dart';
class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  RxBool checkBox = false.obs;
  Future<void> userLogin() async {
    try {
      final response = await http.post(
        Uri.parse('${BASE_URL}provider/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": emailC.text,
          "password": passwordC.text,
        }),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse);
        print(jsonResponse['token']);
        await TokenStorage.saveToken(jsonResponse['token']);
        await UserIdStorage.saveUserId(jsonResponse['user']['id']);
        // print(await UserIdStorage.getUserId());
        // print(await TokenStorage.getToken());
        print('User Login successfully');
        emailC.clear();
        passwordC.clear();
        Get.snackbar(
          'message',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Login',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['status'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.toNamed('/bottombar');
      } else if (response.statusCode == 404) {
        final jsonResponse = jsonDecode(response.body);
        Get.snackbar(
          'Error',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Email Not Found',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['message'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        print('Failed to login user: ${jsonResponse["message"]}');
      } else if (response.statusCode == 400) {
        final jsonResponse = jsonDecode(response.body);
        Get.snackbar(
          'Error',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Wrong Password',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['message'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        print('Failed to login user: ${jsonResponse["message"]}');
      } else {
        print('Failed to login user. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during registration: $e');
    }
  }


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
