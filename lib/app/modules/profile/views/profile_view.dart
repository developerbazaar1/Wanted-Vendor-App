import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: CustomAppBar(
          width: width,
        ),
        body: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileContainer(
                  width,
                  height,
                  SvgPicture.asset(
                    'assets/images/AccountCustomizationIcon.svg',
                    width: width * 0.075,
                  ),
                  "Account Customization"),
              InkWell(
                onTap: (){
                  Get.toNamed('/add-advert',arguments: true);
                },
                child: profileContainer(
                    width,
                    height,
                    Icon(
                      Icons.add_card_outlined,
                      size: width * 0.075,
                    ),
                    "Add Advert",),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed('/help-andsupport');

                },
                child: profileContainer(
                    width,
                    height,
                    Icon(
                      Icons.headset_mic,
                      size: width * 0.075,
                    ),
                    "Help & Support"),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed('/aboun-wanted-privacy');

                },
                child: profileContainer(
                    width,
                    height,
                    Icon(
                      Icons.privacy_tip_outlined,
                      size: width * 0.075,
                    ),
                    "About Wanted & Privacy"),
              ),
              InkWell(
                onTap:(){

                  Get.offAllNamed('/login');
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.05,
                      top: height * 0.03),
                  padding:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  width: width * 0.9,
                  height: height * 0.073,
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.circular(width * 0.015),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 0.05)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyTextQuickSand(
                        text: 'Log Out',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.05,
                      ),
                      Icon(
                        Icons.logout_outlined,
                        size: width * 0.065,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget profileContainer(
      var width, var height, Widget anyWidget, String text) {
    return Container(
      margin: EdgeInsets.only(
          left: width * 0.05, right: width * 0.05, top: height * 0.03),
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      width: width * 0.9,
      height: height * 0.068,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(width * 0.015),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.grey.withOpacity(0.6),
                spreadRadius: 0.05)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              anyWidget,
              SizedBox(
                width: width * 0.03,
              ),
              MyTextQuickSand(
                text: text,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: width * 0.045,
              )
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: width * 0.065,
          )
        ],
      ),
    );
  }
}
