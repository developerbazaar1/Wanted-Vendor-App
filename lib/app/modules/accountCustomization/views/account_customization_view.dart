import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customButton.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/dotedborder.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/account_customization_controller.dart';

class AccountCustomizationView extends GetView<AccountCustomizationController> {
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: CustomAppBar(
          width: width,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: width * 0.015),
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: width * 0.06,
                          )),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                    MyTextQuickSand(
                      text: 'Account Customization',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.06,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextQuickSand(
                      text: 'Profile Details',
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.045,
                    ),
                    SizedBox(
                      height: height * 0.01,
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
                    Divider(),
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
                    Divider(),
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
                    Divider(),
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
                      height: height * 0.01,
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
                        controller: c,
                        headingText: 'Enter Old Password:',
                        hintText: "########"),
                    MyTextFeild(
                        controller: c,
                        headingText: 'Enter New Password:',
                        hintText: "########"),
                    MyTextFeild(
                        controller: c,
                        headingText: 'Re-enter New Password:',
                        hintText: "########"),
                    SizedBox(
                      height: height * 0.025,
                    ),
                    customeButton(width, height, 'Save Updates'),
                    SizedBox(
                      height: height * 0.025,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
