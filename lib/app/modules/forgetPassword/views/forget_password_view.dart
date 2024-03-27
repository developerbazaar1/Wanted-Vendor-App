import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/widgets/customTextfield.dart';

import '../../../../utils/myText.dart';
import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController c = TextEditingController();

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
                    child: Form(
                        key: _formKey,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                  color: Colors.grey.shade500.withOpacity(0.2)),
                              width: double.maxFinite,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.05,
                                    vertical: height * 0.05),
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
                                          text: 'Forgot Your Password?.'),
                                      // Text(
                                      //     'Welcome back, Vendor!\nManage Your Deals Here.',
                                      //     style: loginHeadingStyle,
                                      //     textAlign: TextAlign.center),
                                      SizedBox(height: height * 0.02),
                                      MyTextQuickSand(
                                        text:
                                            "No worries, we'll help you reset it.",
                                        fontSize: width * 0.035,
                                      ),
                                      SizedBox(height: height * 0.03),
                                      customTextField('assets/images/Mail.svg',
                                          'Enter Email Address', width, height,c),
                                      SizedBox(height: height * 0.025),
                                      ElevatedButton(
                                          onPressed: () {
                                                  Get.toNamed('/reset-password');

                                          },
                                          child: MyTextQuickSand(
                                            text: 'Submit',
                                          )),
                                      // InkWell(
                                      //     onTap: () {
                                      //       Get.toNamed('/reset-password');
                                      //     },
                                      //     child: customeButton(
                                      //         width, height, 'Submit')),
                                    ]),
                              ),
                            ),
                          ],
                        ))))));
  }
}
