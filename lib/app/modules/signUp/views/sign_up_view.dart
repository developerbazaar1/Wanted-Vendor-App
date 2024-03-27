import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/textStyle.dart';
import 'package:wanted/widgets/customTextfield.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
        child: Scaffold(
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
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.shade500.withOpacity(0.2)),
                            width: double.maxFinite,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.05,
                                  vertical: height * 0.05),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/img_wanted_1_1.png",
                                      width: width * 0.3,
                                    ),
                                    SizedBox(height: height * 0.03),
                                    const MyTextQuickSand(
                                        text:
                                            'Unlock Coupon Deals:\nPartner with Us!',
                                        textAlign: TextAlign.center),
                                    SizedBox(height: height * 0.007),
                                    MyTextQuickSand(
                                      text:
                                          'Start Earning: Exclusive Vendor Benefits Await You!',
                                      fontSize: width * 0.035,
                                    ),
                                    SizedBox(height: height * 0.02),
                                    MyAuthTextField(
                                        controller: controller.userNameC,
                                        hintText: "Enter Full Name",
                                        img: 'assets/images/Avatar.svg',
                                        validatorText: 'UserName'),
                                    SizedBox(height: height * 0.015),

                                    MyAuthTextField(
                                      controller: controller.emailC,
                                      hintText: "Enter Email Address",
                                      img: 'assets/images/Mail.svg',
                                      validatorText: 'Email',
                                    ),
                                    SizedBox(height: height * 0.015),

                                    MyAuthTextField(
                                      controller: controller.passwordC,
                                      hintText: "Password",
                                      img: 'assets/images/pass.svg',
                                      validatorText: 'Password',
                                    ),
                                    SizedBox(height: height * 0.025),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: width * 0.05,
                                            width: width * 0.05,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Obx(
                                              () => Checkbox(
                                                  activeColor: Colors.black
                                                      .withOpacity(0.4),
                                                  value: (controller
                                                      .checkBox.value),
                                                  onChanged: (value) {
                                                    controller.checkBox.value =
                                                        value!;
                                                  }),
                                            )),
                                        SizedBox(width: width * 0.025),
                                        const MyTextLato(
                                            text:
                                                "Agree to Terms & Privacy to Create Account.")
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),

                                    ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            if (controller.checkBox == true) {
                                              controller.userRegister();
                                            } else {
                                              Get.snackbar(
                                                'Error',
                                                'Text',
                                                titleText: const MyTextQuickSand(
                                                  text: 'Please Check The Box',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                messageText: const MyTextQuickSand(
                                                  text:
                                                      "Agree to Terms & Privacy to Create Account.",
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                backgroundColor: Colors.red,
                                                colorText: Colors.white,
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                              );
                                              print('plese check the box');
                                            }
                                          }
                                          // controller.userRegister()
                                        },
                                        child: const MyTextQuickSand(
                                          text: 'SIGN UP',
                                        )),
                                    // InkWell(
                                    //     onTap: () {
                                    //
                                    //     },
                                    //     child: customeButton(
                                    //         width, height, 'SIGN UP')),
                                    SizedBox(height: height * 0.035),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyTextLato(
                                          text: 'Already have an account?  ',
                                          fontSize: width * 0.035,
                                        ),
                                        InkWell(
                                            onTap: () {
                                              Get.toNamed('login');
                                            },
                                            child: MyTextLato(
                                              text: "Login",
                                              fontSize: width * 0.035,
                                              color: appColor,
                                            )),
                                        MyTextLato(
                                          text: '  here',
                                          fontSize: width * 0.035,
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                          ))),
                ))));
  }
}
