import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
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
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/splashScreenBg.png'),
                        fit: BoxFit.cover)),
                child: Center(
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Form(
                            key: _formKey,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade500
                                          .withOpacity(0.2)),
                                  width: double.maxFinite,
                                  height: height * 0.65,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/img_wanted_1_1.png",
                                          width: width * 0.3,
                                        ),
                                        SizedBox(height: height * 0.03),
                                        Text(
                                            'Unlock Coupon Deals:\nPartner with Us!',
                                            style: loginHeadingStyle,
                                            textAlign: TextAlign.center),
                                        SizedBox(height: height * 0.007),
                                        Text(
                                            'Start Earning: Exclusive Vendor Benefits Await You!',
                                            style: loginHeadingStyle2,
                                            textAlign: TextAlign.center),
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
                                              height: 20,
                                              width: 20,
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
                                            Text(
                                              'Agree to Terms & Privacy to Create Account.',
                                              style: latoStyle,
                                            )
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
                                            Text(
                                              'Already have an account?  ',
                                              style: latoStyleBottomText,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Get.toNamed('login');
                                              },
                                              child: Text(
                                                'Log in',
                                                style: latoStyleBottomTextGreen,
                                              ),
                                            ),
                                            Text(
                                              '  here.',
                                              style: latoStyleBottomText,
                                            ),
                                          ],
                                        )
                                      ]),
                                )
                              ],
                            )))))));
  }
}
