import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/dotedborder.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';
import '../controllers/account_customization_controller.dart';
class AccountCustomizationView extends GetView<AccountCustomizationController> {
  TextEditingController c = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AccountCustomizationView({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: CustomAppBar(
          width: width,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.03),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingElement(text: 'Account Customization'),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Divider(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  MyTextQuickSand(
                    text: 'Profile Details',
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.045,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Center(
                    child: SizedBox(
                      width: width,
                      child: CustomPaint(
                        painter: DashedBorderPainter(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextQuickSand(
                          text: 'Name:',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.045,
                        ),
                        MyTextLato(
                          text: 'Angela L. Callahan:',
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.04,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextQuickSand(
                          text: 'Email Address::',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.045,
                        ),
                        MyTextLato(
                          text: 'angela@gmail.com',
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.04,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextQuickSand(
                          text: 'Phone No. ::',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.045,
                        ),
                        MyTextLato(
                          text: '90009-90009',
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 0.04,
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  MyTextQuickSand(
                    text: 'Change Password',
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.045,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Center(
                    child: SizedBox(
                      width: width,
                      child: CustomPaint(
                        painter: DashedBorderPainter(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  MyTextFeild(
                    controller: controller.oldPasswordC,
                    headingText: 'Enter Old Password:',
                    hintText: "########",
                    validator: "Password",
                  ),
                  MyTextFeild(
                      controller: controller.newPasswordC,
                      headingText: 'Enter New Password:',
                      hintText: "########",
                      validator: "Password"),
                  MyTextFeild(
                    controller: controller.conformPasswordC,
                    headingText: 'Re-enter New Password:',
                    hintText: "########",
                    validator: "Password",
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.updatePassword();
                          }
                        },
                        child: const MyTextQuickSand(
                          text: 'Save Updates',
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
