import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';

import 'package:wanted/utils/size_utils.dart';
import 'package:wanted/utils/textStyle.dart';
import 'package:wanted/widgets/customButton.dart';
import 'package:wanted/widgets/customTextfield.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
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
                                // wanted im,g

                                //
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                            'Welcome back, Vendor!\nManage Your Deals Here.',
                                            style: loginHeadingStyle,
                                            textAlign: TextAlign.center),
                                        SizedBox(height: height * 0.02),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              'Start Managing Your Deals: Exclusive Benefits Await!',
                                              style: loginHeadingStyle2,
                                              ),
                                        ),
                                        SizedBox(height: height * 0.03),
                                        customTextField(
                                            'assets/images/Mail.svg',
                                            'Enter Email Address',width,height),
                                        SizedBox(height: height * 0.015),
                                        customTextField(
                                            'assets/images/pass.svg',
                                            'Password',width,height),
                                        SizedBox(height: height * 0.025),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 17,
                                              width: 17,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(3),
                                                  border: Border.all(
                                                      color: Colors.white)),
                                              child: Checkbox(
                                                  activeColor: Colors.transparent
                                                      .withOpacity(0.4),
                                                  value: (true),
                                                  onChanged: (onChanged) {}),
                                            ),
                                            SizedBox(width: width * 0.025),
                                            Text(
                                              'Save My Login Details',
                                              style: latoStyle,
                                            )
                                          ],
                                        ),
                                        SizedBox(height: height * 0.02),
                                        InkWell(
                                            onTap: (){
                                              Get.toNamed('/sign-up');
                                            },
                                            child: customeButton(width,height,'LOGIN')),
                                        SizedBox(height: height * 0.035),

                                        Text(
                                          'Forgot Your Password?',
                                          style: forgotPassLatoStyle,
                                        ),
                                        SizedBox(height: height * 0.035),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'New to Wanted?  ',
                                              style: latoStyleBottomText,
                                            ),
                                            InkWell(
                                              onTap: (){
                                                Get.toNamed('/sign-up');

                                              },
                                              child: Text(
                                                'Sign up',
                                                style: latoStyleBottomTextGreen,
                                              ),
                                            ),
                                            Text(
                                              '  now!',
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
