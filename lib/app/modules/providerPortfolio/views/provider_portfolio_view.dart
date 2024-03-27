import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customeDropdown.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';

import '../controllers/provider_portfolio_controller.dart';

class ProviderPortfolioView extends GetView<ProviderPortfolioController> {
  ProviderPortfolioView({super.key});

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
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeadingElement(
                  text: 'Provider Portfolio',
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                MyTextQuickSand(
                  text: 'Showcase Your Business',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.045,
                ),
                MyTextFeild(
                  controller: c,
                  hintText: 'Enter your store name',
                  headingText: 'Store Name:',
                ),
                MyTextFeild(
                  controller: c,
                  hintText: 'Enter your store website',
                  headingText: 'Store Website:',
                ),
                MyTextFeild(
                  controller: c,
                  hintText: 'Enter your store email address',
                  headingText: 'Store Email Address:',
                ),
                MyTextFeild(
                  controller: c,
                  hintText: 'Enter your store contact details',
                  headingText: 'Store Contact Details:',
                ),
                SizedBox(
                  height: width * 0.025,
                ),
                customeDropDown(
                  width,
                  height,
                  'Store Category:',
                  controller.categoryItems,
                  'Enter your store category',
                  (newValue) {
                    print('Selected value: $newValue');
                  },
                ),
                SizedBox(
                  height: width * 0.025,
                ),
                customeDropDown(
                  width,
                  height,
                  'Store Sub Category:',
                  controller.subCategoryItems,
                  'Enter your store sub category',
                  (newValue) {
                    print('Selected value: $newValue');
                  },
                ),
                MyTextFeild(
                  controller: c,
                  hintText: 'Enter your store location',
                  headingText: 'Location',
                ),
                MyTextFeildMessage(
                  controller: c,
                  headingText: "Store Description:",
                  hintText: 'Enter your store description',
                  maxLines: 4,
                ),
                MyTextLato(
                  text: 'Upload Your Portfolio Image:',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.040,
                ),
                SizedBox(
                  height: width * 0.02,
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  dashPattern: [9, 9],
                  radius: const Radius.circular(12),
                  padding: const EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: width * 0.4,
                      width: width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/uplodIcon.svg',
                            width: width * 0.075,
                          ),
                          SizedBox(
                            height: height * 0.015,
                          ),
                          const MyTextLato(
                            text: 'Drag Or Upload Your Advert Main Images',
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                MyTextLato(
                  text: 'PNG or JPG no bigger than 800px wide and tall.',
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(
                  height: width * 0.08,
                ),
                Container(
                  width: width * 0.35,
                  padding: EdgeInsets.all(width * 0.01),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.01),
                      color: appColor),
                  child: Center(
                    child: MyTextQuickSand(
                      text: 'Save Updates',
                      color: Colors.black,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.08,
                ),
              ],
            ),
          ),
        ));
  }
}
