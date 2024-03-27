import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';

import 'package:wanted/widgets/customeTexrFormField.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey.shade500.withOpacity(0.2)),
                          width: double.maxFinite,
                          child:   Padding(
                            padding:
                             EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.05),
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
                                      'Welcome back, Vendor!\nManage Your Deals Here.'),
                                  // Text(
                                  //     'Welcome back, Vendor!\nManage Your Deals Here.',
                                  //     style: loginHeadingStyle,
                                  //     textAlign: TextAlign.center),
                                  SizedBox(height: height * 0.02),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: MyTextQuickSand(
                                      text:
                                      'Start Managing Your Deals: Exclusive Benefits Await!',fontSize: width*0.035,),

                                    // Text(
                                    //     'Start Managing Your Deals: Exclusive Benefits Await!',
                                    //     style: loginHeadingStyle2,
                                    //     ),
                                  ),
                                  SizedBox(height: height * 0.03),
                                  MyAuthTextField(controller: controller.emailC, hintText: "Enter Email Address", validatorText: "Email", img: "assets/images/Mail.svg"),
                                  // customTextField('assets/images/Mail.svg',
                                  //     'Enter Email Address', width, height,c),
                                  SizedBox(height: height * 0.015),
                                  MyAuthTextField(controller: controller.passwordC, hintText: "Password", validatorText: "Password", img: "assets/images/pass.svg"),
                                  // customTextField('assets/images/pass.svg',
                                  //     'Password', width, height,c),
                                  SizedBox(height: height * 0.025),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: width*0.05,
                                        width: width*0.05,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(3),
                                            border: Border.all(
                                                color: Colors.white)),
                                        child: Obx(() => Checkbox(
                                            activeColor: Colors.transparent
                                                .withOpacity(0.4),
                                            value: (controller.checkBox.value),
                                            onChanged: (value) {
                                              controller.checkBox.value = value!;

                                            }),)
                                      ),
                                      SizedBox(width: width * 0.025),
                                      const MyTextLato(text: 'Save My Login Details'),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02),
                                  ElevatedButton(

                                      onPressed: () {
                                        // Get.toNamed('/bottombar');

                                        if (_formKey.currentState!
                                            .validate()) {
                                          if (controller.checkBox == true) {
                                            controller.userLogin();

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
                                      }
                                  ,child: MyTextQuickSand(text: 'LOGIN',)),

                                  // InkWell(
                                  //     onTap: () {
                                  //     },
                                  //     child: customeButton(
                                  //         width, height, 'LOGIN')),
                                  SizedBox(height: height * 0.035),

                                  InkWell(
                                      onTap: (){
                                        Get.toNamed('/forget-password');
                                      },
                                      child: MyTextLato(text: 'Forgot Your Password?',color: appColor,textDecoration: TextDecoration.underline,decorationColor: appColor,)),
                                  SizedBox(height: height * 0.035),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    children: [
                                      MyTextLato(text: 'New to Wanted?  ',fontSize: width*0.035,),

                                      InkWell(
                                          onTap: () {
                                            Get.toNamed('/sign-up');
                                          },
                                          child: MyTextLato(text: 'Sign Up',fontSize: width*0.035,color: appColor,)
                                      ),
                                      MyTextLato(text: '  Now!',fontSize: width*0.035,)
                                    ],
                                  )
                                ]),
                          ),
                        ))))));
  }
}
