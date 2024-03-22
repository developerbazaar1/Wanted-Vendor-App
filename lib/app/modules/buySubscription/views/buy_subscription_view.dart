import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/buy_subscription_controller.dart';

class BuySubscriptionView extends GetView<BuySubscriptionController> {
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
                        text: 'Buy Subscription',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.061,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.02,
                ),
                const Divider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyTextLato(
                      text: 'Choose Plan:',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.040,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: width * 0.025,
                    ),
                    SizedBox(
                      height: height * 0.56,
                      child: LayoutBuilder(builder: (context, constraints) {
                        // final width = constraints.maxWidth - (8 * 16); //for spacing

                        return Obx(() => ListView(
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  runSpacing: width * 0.05,
                                  spacing: width * 0.05,
                                  children: List.generate(
                                      controller.planList.length,
                                      (index) => InkWell(
                                            onTap: () {
                                              // controller.setSelectedPlan(true, index);

                                              controller.isSelectedPlanIndex
                                                  .value = index;
                                              controller.selectedPlanButton
                                                      .value =
                                                  controller.planList[index]
                                                      .planAmount;
                                            },
                                            child: Container(
                                              padding:
                                                  EdgeInsets.all(width * 0.009),
                                              width: width * 0.38,
                                              height: height * 0.25,
                                              decoration: BoxDecoration(
                                                  color: controller
                                                              .isSelectedPlanIndex
                                                              .value !=
                                                          index
                                                      ? Colors.white
                                                      : appColor2.withOpacity(0.8),
                                                  border: Border.all(
                                                    width: controller
                                                                .isSelectedPlanIndex
                                                                .value !=
                                                            index
                                                        ? 1
                                                        : 2,
                                                  ),
                                                  borderRadius: BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.3),
                                                        blurRadius: 8,
                                                        spreadRadius: 4)
                                                  ]),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        controller
                                                            .planList[index]
                                                            .img,
                                                        width: width * 0.08,
                                                      ),
                                                      MyTextLato(
                                                        text: controller
                                                            .planList[index]
                                                            .planName,
                                                        fontSize: width * 0.042,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: width * 0.025),
                                                  MyTextQuickSand(
                                                      text: controller
                                                          .planList[index]
                                                          .planAmount,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: width * 0.04),
                                                  SizedBox(
                                                      height: width * 0.003),
                                                  MyTextLato(
                                                      text: 'Per Month',
                                                      color: Colors.black,
                                                      fontSize: width * 0.025),
                                                  SizedBox(
                                                      height: width * 0.025),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      MyTextLato(
                                                          text: 'Ads You Show',
                                                          color: Colors.black,
                                                          fontSize:
                                                              width * 0.025),
                                                      MyTextQuickSand(
                                                        text: controller
                                                            .planList[index]
                                                            .numberOfAds,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: width * 0.04,
                                                      )
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      MyTextLato(
                                                          text:
                                                              'Validity For Days',
                                                          color: Colors.black,
                                                          fontSize:
                                                              width * 0.025),
                                                      MyTextQuickSand(
                                                          text: controller
                                                              .planList[index]
                                                              .numberOfDays,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize:
                                                              width * 0.04)
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: width * 0.025),
                                                  Container(
                                                    padding: EdgeInsets.all(
                                                        width * 0.01),
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 15),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    width *
                                                                        0.01),
                                                        color: controller
                                                                    .isSelectedPlanIndex
                                                                    .value !=
                                                                index
                                                            ? appColor2
                                                            : Colors
                                                                .lightBlueAccent
                                                                .shade100
                                                                .withOpacity(
                                                                    0.5)),
                                                    child: Center(
                                                      child: MyTextQuickSand(
                                                        text: controller
                                                                    .isSelectedPlanIndex
                                                                    .value !=
                                                                index
                                                            ? 'Select Plan'
                                                            : 'Selected',
                                                        color: Colors.black,
                                                        fontSize: width * 0.04,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                ),
                              ],
                            ));
                      }),
                    ),

                    InkWell(
                        onTap: () {
                          if (controller.selectedPlanButton.isNotEmpty) {
                            controller.isPurched.value = true;
                          }
                          if (controller.selectedPlanButton.isEmpty)
                            controller.isSelectedPlanIndex.value = 0;
                          controller.selectedPlanButton.value = controller
                              .planList[controller.isSelectedPlanIndex.value]
                              .planAmount;
                        },
                        child: Obx(
                          () => Container(
                            padding: EdgeInsets.all(width * 0.015),
                            decoration: BoxDecoration(color: appColor),
                            child: MyTextQuickSand(
                              text: controller.isSelectedPlanIndex == -1
                                  ? "Select Plan"
                                  : 'Pay ${controller.selectedPlanButton.value} To Purchase',
                              color: Colors.black,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),

                    SizedBox(height: width * 0.025),
                    Obx(
                      () => controller.selectedPlanButton.isNotEmpty &&
                              controller.isPurched.value
                          ? Column(
                              children: [
                                SizedBox(height: width * 0.025),
                                Image.asset(
                                  'assets/images/paymentReciveIcon.png',
                                ),
                                SizedBox(height: width * 0.025),
                                MyTextQuickSand(
                                  text: 'Payment Received',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.05,
                                ),
                                SizedBox(height: width * 0.025),
                                MyTextLato(
                                  text:
                                      'Your Payment Has Been Successfully Received',
                                  color: Colors.black,
                                  fontSize: width * 0.035,
                                )
                              ],
                            )
                          : SizedBox(),
                    ),
                    SizedBox(height: width * 0.05),
                    InkWell(
                      onTap: () {
                        Get.toNamed('/add-advert', arguments: true);
                      },
                      child: Container(
                        width: width * 0.565,
                        padding: EdgeInsets.all(width * 0.015),
                        decoration: BoxDecoration(color: appColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MyTextQuickSand(
                              text: 'Add New Advert',
                              color: Colors.black,
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w600,
                            ),
                            Icon(Icons.add_circle_outline)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: width * 0.1),

                    // SizedBox(
                    //   height: width * 0.02,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //
                    //    InkWell(
                    //        onTap:(){
                    //          // controller.isSelectedPlan1.value = true;
                    //          // controller.isSelectedPlan2.value = false;
                    //          // controller.isSelectedPlan2.value = false;
                    //        },
                    //
                    //        child: addPlanContainer(width, height,'assets/images/startPlanIcon.png','Starter Plan','£399','3 Ads','3 Days')),
                    //    addPlanContainer(width, height,'assets/images/startPlanPreIcon.png','Premium Plan','£699','5 Ads','5 Days'),
                    //
                    //
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: width * 0.025,
                    // ),
                    // addPlanContainer(width, height,'assets/images/startPlanProIcon.png','Pro Plan','£999','15 Ads','15 Days'),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
