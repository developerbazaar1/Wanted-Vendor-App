import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/textStyle.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: CustomAppBar(width: width),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: width * 0.03),
                child: MyTextQuickSand(
                  text: 'Good Morning, Dino',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.055,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.03),
                child: MyTextQuickSand(
                    text: 'Welcome to Your Vendor Dashboard!',
                    color: Colors.black,
                    textAlign: TextAlign.center,
                    fontSize: width * 0.042,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                  onTap: () {
                    Get.toNamed('/advert-show-case');
                  },
                  child: costumeTile(
                      'assets/images/advertShowcaseIcon.svg',
                      "Advert Showcase",
                      "A Space for Your Ad Campaigns",
                      width,
                      height)),
              InkWell(
                  onTap: () {
                    Get.toNamed('/provider-portfolio');
                  },
                  child: costumeTile(
                      'assets/images/providerPotfolioIcon.svg',
                      "Provider Portfolio",
                      "Showcase Your Provider Identity",
                      width,
                      height)),

              InkWell(
                onTap: () {
                  Get.toNamed('/customer-inquiries');
                },
                child: costumeTile(
                    'assets/images/Customer InquiriesIcon.svg',
                    "Customer Inquiries",
                    "Stay Updated On Customer Queries",
                    width,
                    height),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/rewards-hub');
                },
                child: costumeTile('assets/images/RewardsHubIcon.svg', "Rewards Hub",
                    "Monitor Customer Loyalty Rewards", width, height),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/payments',arguments: true);
                },
                child: costumeTile(
                    'assets/images/PaymentHistoryIcon.svg',
                    "Payment History",
                    "Keep Tabs on Your Payments",
                    width,
                    height),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed('/account-customization');
                },
                child: costumeTile(
                    'assets/images/AccountCustomizationIcon.svg',
                    "Account Customization",
                    "Fine-Tune Your Vendor Account",
                    width,
                    height),
              ),

              SizedBox(height: height*0.05,)
            ],
          ),
        ),
      ),
    );
  }

  Widget costumeTile(
      String img, String title, String subTitle, var width, var height) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 7,
                spreadRadius: 01,
                color: Colors.grey.withOpacity(0.3),
              )
            ]),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
              vertical: height * 0.005, horizontal: width * 0.01),
          leading: CircleAvatar(
              radius: width * 0.1,
              backgroundColor: appColor2,
              child: Center(
                child: SvgPicture.asset(
                  img,
                  width: width * 0.08,
                ),
              )),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: MyTextQuickSand(
              text: title,
              fontWeight: FontWeight.w600,
              fontSize: width * 0.047,
              color: Colors.black,
            ),
          ),
          subtitle: MyTextQuickSand(
            text: subTitle,
            fontWeight: FontWeight.w500,
            fontSize: width * 0.038,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
