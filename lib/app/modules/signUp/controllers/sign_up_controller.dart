import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wanted/app/data/apiConstant.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/tokenManagement.dart';

class SignUpController extends GetxController {
  TextEditingController userNameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  RxBool checkBox = false.obs;

  Future<void> userRegister() async {
    try {
      final response = await http.post(
        Uri.parse('${BASE_URL}provider/signup'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": emailC.text,
          "password": passwordC.text,
          "userName": userNameC.text,
        }),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        print(jsonResponse['token']);
        await TokenStorage.saveToken(jsonResponse['token']);
        await UserIdStorage.saveUserId(jsonResponse['user']['id']);
         print(await TokenStorage.getToken());
         print('ddffddddddd');
         print(await UserIdStorage.getUserId());
        print('User registered successfully');
        emailC.clear();
        passwordC.clear();
        userNameC.clear();
        Get.snackbar(
          'message',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'Register',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          messageText: MyTextQuickSand(
            text: jsonResponse['message'],
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed('/bottombar');
      } else if (response.statusCode == 400) {
        final jsonResponse = jsonDecode(response.body);
        Get.snackbar(
          'Error',
          'Text',
          titleText: const MyTextQuickSand(
            text: 'User Already Exists',
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
        print('Failed to register user: ${jsonResponse["message"]}');
      } else {
        print('Failed to register user. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during registration: $e');
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
