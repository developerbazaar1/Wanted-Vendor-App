import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/myText.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: Container(
            width: width,
            height: height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splashScreenBg.png'),
                    fit: BoxFit.cover)),
            child: Center(
                child: SingleChildScrollView(
                    child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.03),
                  color: Colors.grey.shade500.withOpacity(0.2)),
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.05),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                weight: width * 0.05,
                              )),
                          SizedBox(
                            width: width * 0.23,
                          ),
                          Image.asset(
                            "assets/images/img_wanted_1_1.png",
                            width: width * 0.3,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      const MyTextQuickSand(
                          text: 'Password Reset\nInstructions Sent.'),
                      // Text(
                      //     'Welcome back, Vendor!\nManage Your Deals Here.',
                      //     style: loginHeadingStyle,
                      //     textAlign: TextAlign.center),
                      SizedBox(height: height * 0.02),
                      MyTextQuickSand(
                        text: "No worries, we'll help you reset it.",
                        fontSize: width * 0.035,
                      ),
                      SizedBox(height: height * 0.03),

                      ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/login');
                          },
                          child: const MyTextQuickSand(
                            text: 'Back To Login',
                          )),
                      // InkWell(
                      //     onTap: () {
                      //       Get.toNamed('/login');
                      //     },
                      //     child: customeButton(
                      //         width, height, 'Back to Login')),
                    ]),
              ),
            )))));
  }
}
