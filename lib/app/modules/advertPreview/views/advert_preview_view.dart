import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/expandedText.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/advert_preview_controller.dart';

class AdvertPreviewView extends GetView<AdvertPreviewController> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: width * 0.02, left: width * 0.03),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: width * 0.06,
                              ))),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: MyTextQuickSand(
                        text: 'Raybella Nails',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.061,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                const Divider(),
                SizedBox(height: height * 0.005),
                Container(
                  height: height * 0.25,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width * 0.02),
                  ),
                  child: Image.asset('assets/images/Frame 30.png'),
                ),
                SizedBox(height: height * 0.005),
                const MyTextQuickSand(
                  text: 'Raybella Nails',
                  color: Colors.black,
                ),
                SizedBox(height: height * 0.01),
                const MyTextLato(
                  text: '111 North Lake Shore Drive, Chicago 3 mi',
                  color: Colors.black,
                ),
                SizedBox(height: height * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.015),
                          color: appColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Phone Call.svg',
                            width: width * 0.06,
                          ),
                          MyTextQuickSand(
                            text: 'Contact Us',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.042,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.05,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: appColor, width: width * 0.004),
                        borderRadius: BorderRadius.circular(width * 0.015),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/World.svg',
                            width: width * 0.06,
                          ),
                          MyTextQuickSand(
                            text: 'Visit Our Website',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.04,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.025),
                MyTextLato(
                  text: 'About This Service',
                  color: Colors.black,
                  fontSize: width * 0.05,
                ),
                SizedBox(height: height * 0.01),
                SizedBox(
                    width: width * 0.93,
                    child: const ExpandableTextWidget(
                      text:
                          'Promotional value expires 120 days after purchase. Amount paid never expires. Appointment required. Valid only for option purchased Promotional value expires 120 days after purchase. Amount paid never expires. Appointment required. Valid only for option purchased. Read More',
                    )),
                SizedBox(height: height * 0.025),
                MyTextQuickSand(
                  text: 'Share This Deal',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.05,
                ),
                SizedBox(height: height * 0.01),
                SizedBox(
                  width: width * 0.37,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Email.svg',
                        width: width * 0.055,
                      ),
                      SvgPicture.asset(
                        'assets/images/facebook.svg',
                        width: width * 0.055,
                      ),
                      SvgPicture.asset(
                        'assets/images/twitter.svg',
                        width: width * 0.055,
                      ),
                      SvgPicture.asset(
                        'assets/images/mdi_pinterest.svg',
                        width: width * 0.055,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.025),
                MyTextLato(
                  text: 'Facial Massage',
                  color: Colors.black,
                  fontSize: width * 0.05,
                ),
                SizedBox(height: height * 0.006),
                Row(
                  children: [
                    MyTextLato(
                      text: 'Italian Pizza',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04,
                    ),
                    MyTextLato(
                      text: ' || ',
                      color: Colors.black,
                      fontSize: width * 0.04,
                    ),
                    MyTextLato(
                      text: '432-P',
                      color: Colors.black,
                      fontSize: width * 0.04,
                    ),
                    MyTextLato(
                      text: " || ",
                      color: Colors.black,
                      fontSize: width * 0.04,
                    ),
                    MyTextLato(
                      text: '\$ 22',
                      color: appColor,
                      fontSize: width * 0.04,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Stack(
                  children: <Widget>[
                    Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: width*0.0005),
                    borderRadius: BorderRadius.circular(width*0.025)
                  ),
                      
                      child: CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            controller.currentIndex.value = index;

                          },
                        ),
                        items: controller.images.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Padding(
                                padding:  EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.002),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(width*0.03),
                                  child: Image.asset(
                                    image,
                                    fit: BoxFit.contain,
                                    width: width,

                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 80,
                      bottom: 80,
                      child: GestureDetector(
                        onTap: () {
                          // print('dfdffffffffffffffffffffffffffff');
                          // controller.carouselController
                          // print(controller.currentIndex.value);
                          // if (controller.currentIndex.value > 0) {
                          //   controller.currentIndex.value--;
                          // }
                        },
                        child: Container(
                          width: width*0.055,
                          decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child:  Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: width*0.04,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 80,
                      bottom: 80,
                      child: GestureDetector(
                        onTap: () {
                          print(controller.currentIndex.value);
                          if (controller.currentIndex <
                              controller.images.length - 1) {
                            controller.currentIndex.value++;
                          }
                        },
                        child: Container(
                          width: width*0.055,

                          decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                          child:  Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: width*0.04,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.025),
                MyTextQuickSand(
                  text: 'More Ads from this provider',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.05,
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.4),
                          borderRadius: BorderRadius.circular(width * 0.01)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Frame 30.png',
                            width: width * 0.45,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.023,
                                vertical: height * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.13,
                                  height: height * 0.032,
                                  child: Center(
                                      child: MyTextLato(
                                    text: 'Live Ads',
                                    color: Colors.red,
                                    fontSize: width * 0.022,
                                    fontWeight: FontWeight.w900,
                                  )),
                                  decoration: BoxDecoration(
                                      color: appColor2,
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5),
                                      borderRadius:
                                          BorderRadius.circular(width * 0.05)),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                SizedBox(
                                    width: width * 0.35,
                                    child: MyTextLato(
                                      maxLines: 4,
                                      text:
                                          'Up to 27% Off on Swedish Massage at West Suburban Wellness',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.026,
                                    )),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                MyTextLato(
                                  text: 'Oasis face Bar',
                                  color: Colors.black,
                                  fontSize: width * 0.025,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.4),
                          borderRadius: BorderRadius.circular(width * 0.01)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Frame 30.png',
                            width: width * 0.45,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.023,
                                vertical: height * 0.01),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.13,
                                  height: height * 0.032,
                                  child: Center(
                                      child: MyTextLato(
                                    text: 'Live Ads',
                                    color: Colors.red,
                                    fontSize: width * 0.022,
                                    fontWeight: FontWeight.w900,
                                  )),
                                  decoration: BoxDecoration(
                                      color: appColor2,
                                      border: Border.all(
                                          color: Colors.grey, width: 0.5),
                                      borderRadius:
                                          BorderRadius.circular(width * 0.05)),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                SizedBox(
                                    width: width * 0.35,
                                    child: MyTextLato(
                                      maxLines: 4,
                                      text:
                                          'Up to 27% Off on Swedish Massage at West Suburban Wellness',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.026,
                                    )),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                MyTextLato(
                                  text: 'Oasis face Bar',
                                  color: Colors.black,
                                  fontSize: width * 0.025,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Center(
                    child: MyTextQuickSand(
                  text: 'Show all Ads from this provider',
                  color: appColor,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.045,
                )),
                SizedBox(height: height * 0.025),
              ],
            ),
          ),
        ));
  }
}
