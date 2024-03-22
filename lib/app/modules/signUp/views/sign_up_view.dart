import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/textStyle.dart';
import 'package:wanted/widgets/customButton.dart';
import 'package:wanted/widgets/customTextfield.dart';

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
                                color: Colors.grey.shade500
                                    .withOpacity(0.2)),
                            width: double.maxFinite,

                            child:   Padding(
                              padding:  EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.05),
                              child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/img_wanted_1_1.png",
                                      width: width * 0.3,
                                    ),
                                    SizedBox(height: height * 0.03),
                                    const MyTextQuickSand(text: 'Unlock Coupon Deals:\nPartner with Us!',textAlign: TextAlign.center),
                                    SizedBox(height: height * 0.007),
                                    MyTextQuickSand(text: 'Start Earning: Exclusive Vendor Benefits Await You!',fontSize: width*0.035,),
                                    SizedBox(height: height * 0.02),
                                    customTextField(
                                        'assets/images/Avatar.svg',
                                        'Enter Full Name',width,height),
                                    SizedBox(height: height * 0.015),
                                    customTextField(
                                        'assets/images/Mail.svg',
                                        'Enter Email Address',width,height),
                                    SizedBox(height: height * 0.015),
                                    customTextField(
                                        'assets/images/pass.svg',
                                        'Password',width,height),
                                    SizedBox(height: height * 0.025),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: width*0.05,
                                          width: width*0.05,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: Checkbox(
                                              activeColor: Colors.black
                                                  .withOpacity(0.4),
                                              value: (true),
                                              onChanged: (onChanged) {}),
                                        ),
                                        SizedBox(width: width * 0.025),
                                        MyTextLato(text: "Agree to Terms & Privacy to Create Account.")
                                      ],
                                    ),
                                    SizedBox(height: height * 0.02),
                                    InkWell(
                                        onTap: () {
                                          Get.toNamed('/bottombar');
                                        },
                                        child: customeButton(
                                            width, height, 'SIGN UP')),
                                    SizedBox(height: height * 0.035),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        MyTextLato(text: 'Already have an account?  ',fontSize: width*0.035,),

                                        InkWell(
                                            onTap: () {
                                              Get.toNamed('login');
                                            },
                                            child: MyTextLato(text: "Login",fontSize: width*0.035,color: appColor,)
                                        ),
                                        MyTextLato(text: '  here',fontSize: width*0.035,)
                                      ],
                                    )
                                  ]),
                            ),
                          ))),
                ))));
  }
}
