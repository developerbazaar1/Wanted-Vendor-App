import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/dotedborder.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';

import '../controllers/help_andsupport_controller.dart';

class HelpAndsupportView extends GetView<HelpAndsupportController> {
  TextEditingController c = TextEditingController();

  HelpAndsupportView({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingElement(text: 'Help & Support'),
                SizedBox(
                  height: height * 0.005,
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/images/helpSupportImage.png',
                        width: width * 0.7,
                      )),
                      SizedBox(height: height * 0.03),
                      MyTextQuickSand(
                          text: 'How Can We Help Your?',
                          color: Colors.black,
                          fontSize: width * 0.055,
                          fontWeight: FontWeight.w600),
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
                        height: height * 0.03,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(width * 0.017),
                              child: const Icon(Icons.phone),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: appColor),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          MyTextQuickSand(
                            text: '90009-90009?',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.055,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(width * 0.017),
                              child: const Icon(Icons.email_outlined),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: appColor),
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          MyTextQuickSand(
                            text: 'help@gmail.com',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.055,
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      MyTextFeildMessage(
                        controller: c,
                        headingText: "Write Us:",
                        headingTextSize: width * 0.05,
                        hintText: 'Write Message here........',
                        fillColor: appColor2,
                        borderRequires: false,
                      ),
                      Center(
                        child: ElevatedButton(onPressed: (){}, child:  MyTextQuickSand(
                          text: 'Submit',
                          color: Colors.black,
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                        ),),
                      ),

                      SizedBox(height: height * 0.03)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
