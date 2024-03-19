import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customeDropdown.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/edit_advert_controller.dart';

class EditAdvertView extends GetView<EditAdvertController> {
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
              vertical: height * 0.02, horizontal: width * 0.035),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: width * 0.02),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: width * 0.06,
                        ),
                      )),
                  SizedBox(
                    width: width * 0.14,
                  ),
                  MyTextQuickSand(
                    text: 'Add New Advert',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.066,
                  ),
                ],
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your advert title',
                headingText: 'Advert Title:',
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your store address',
                headingText: 'Store Name:',
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your advert postal code',
                headingText: 'Postal Code:',
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your advert price',
                headingText: 'Advert Price:',
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter advert offer price',
                headingText: 'Advert Offer Price:',
              ),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your advert price',
                headingText: 'Location:',
              ),
              MyTextFeildMessage(
                  controller: c, headingText: "Add Description:"),
              Padding(
                padding: EdgeInsets.only(bottom: width * 0.02),
                child: MyTextLato(
                  text: 'Upload Main Image:',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.040,
                ),
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
              SizedBox(
                height: width * 0.012,
              ),
              const MyTextLato(
                text: "PNG or JPG no bigger than 800px wide and tall.",
                color: Colors.black,
              ),
              SizedBox(
                height: width * 0.025,
              ),
              MyTextLato(
                text: 'Do You Want To Add Products ?',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.040,
              ),
              SizedBox(
                height: width * 0.025,
              ),
              Container(
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.012),
                  border: Border.all(color: Colors.black, width: width * 0.003),
                ),
                child: Obx(() => Padding(
                  padding: EdgeInsets.only(right: width * 0.028),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // Adjust the alignment as needed
                    children: [
                      Row(
                        children: [
                          Radio<bool>(
                            activeColor: appColor,
                            value: true,
                            groupValue:
                            controller.selectedOptionForProduct.value,
                            onChanged: (value) {
                              controller
                                  .setSelectedOptionForProduct(value!);
                            },
                          ),
                          MyTextLato(
                            text: 'Yes',
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<bool>(
                            value: false,
                            activeColor: appColor,
                            groupValue:
                            controller.selectedOptionForProduct.value,
                            onChanged: (value) {
                              controller.selectNumberOfProduct.value = '0';
                              controller
                                  .setSelectedOptionForProduct(value!);
                            },
                          ),
                          MyTextLato(
                            text: 'No',
                            color: Colors.black,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ),
              SizedBox(
                height: width * 0.025,
              ),
              Obx(() => controller.selectedOptionForProduct.value
                  ? customeDropDown(width, height,'How Many Product do you have',controller.dropdownItems,'Select Number Of Products:', (newValue) {
                controller.setNumberOfProduct(newValue.toString());
              },)
                  : const SizedBox()),
              SizedBox(
                height: width * 0.025,
              ),
              Obx(
                    () {
                  return controller.selectedOptionForProduct.value
                      ? Container(
                    child: controller.selectNumberOfProduct.value == '1'
                        ? Column(
                      children: [
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                      ],
                    )
                        : controller.selectNumberOfProduct.value == '2'
                        ? Column(
                      children: [
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                      ],
                    )
                        : controller.selectNumberOfProduct.value ==
                        '3'
                        ? Column(
                      children: [
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                        addProductForm(width, height),
                        SizedBox(
                          height: width * 0.025,
                        ),
                      ],
                    )
                        : const SizedBox(),
                  )
                      : const SizedBox();
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextLato(
                    text: 'Available Subscription',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: width * 0.040,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: width * 0.025,
                  ),
                  SizedBox(
                    height: height * 0.6,
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
                                    controller.selectedPlanButton.value = controller.planList[index].planName;
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
                                            : appColor2
                                            .withOpacity(0.8),
                                        border: Border.all(
                                          width: controller
                                              .isSelectedPlanIndex
                                              .value !=
                                              index
                                              ? 1
                                              : 2,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(5),
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
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              controller
                                                  .planList[index].img,
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
                                        SizedBox(height: width * 0.025),
                                        MyTextQuickSand(
                                            text: controller
                                                .planList[index]
                                                .planAmount,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: width * 0.04),
                                        SizedBox(height: width * 0.003),
                                        MyTextLato(
                                            text: 'Per Month',
                                            color: Colors.black,
                                            fontSize: width * 0.025),
                                        SizedBox(height: width * 0.025),
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
                                                fontSize: width * 0.04)
                                          ],
                                        ),
                                        SizedBox(height: width * 0.025),
                                        Container(
                                          padding: EdgeInsets.all(
                                              width * 0.01),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  width * 0.01),
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
                      onTap: (){
                        controller.isSelectedPlanIndex.value = 0;
                        controller.selectedPlanButton.value = controller.planList[controller.isSelectedPlanIndex.value].planName;
                      },
                      child: Obx(() => Container(
                        padding: EdgeInsets.all(width*0.015),
                        decoration: BoxDecoration(
                            color: appColor
                        ),
                        child: MyTextQuickSand(text: controller.isSelectedPlanIndex == -1?"Select Plan":'You have Selected ${controller.selectedPlanButton.value}',color: Colors.black,fontSize: width*0.05,fontWeight: FontWeight.w600,),
                      ),)
                  ),
                  SizedBox(height: width * 0.025),

                  Container(


                    padding: EdgeInsets.all(width*0.015),
                    decoration: BoxDecoration(
                        color: appColor
                    ),
                    child: MyTextQuickSand(text: 'Submit',color: Colors.black,fontSize: width*0.05,fontWeight: FontWeight.w600,),)

                ],
              ),
              SizedBox(
                height: width * 0.025,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget addProductForm(var width, var height) {
    return Container(
      padding: EdgeInsets.all(width * 0.05),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 0),
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 5,
                spreadRadius: 7)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextFeild(
            controller: c,
            hintText: 'Enter product title',
            headingText: 'Products Title',
          ),
          MyTextFeild(
            controller: c,
            hintText: 'Product mame',
            headingText: 'Product Name',
          ),
          MyTextFeild(
            controller: c,
            hintText: 'Product price',
            headingText: 'Product Price',
          ),
          SizedBox(
            height: width * 0.025,
          ),
          customeDropDown(width, height,'Product Category',controller.categoryItems,'Select Products Category:', (newValue) {
            print('Selected value: $newValue');
          },),
          SizedBox(
            height: width * 0.025,
          ),
          customeDropDown(width, height,'Product Sub Category',controller.subCategoryItems,'Select Products Sub Category:', (newValue) {
            print('Selected value: $newValue');
          },),
          SizedBox(
            height: width * 0.025,
          ),
          customeDropDown(width, height,'Sub-Sub Category',controller.subSubCategoryItems,'Select Sub-Sub Category:', (newValue) {
            print('Selected value: $newValue');
          },),
          SizedBox(
            height: width * 0.025,
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
          SizedBox(
            height: width * 0.012,
          ),
        ],
      ),
    );
  }

  Widget addPlanContainer(var width, var height, String img, String planName,
      String planAmount, String numberOfAds, String numberOfDays) {
    return Container(
      padding: EdgeInsets.all(width * 0.009),
      width: width * 0.38,
      height: width * 0.48,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                spreadRadius: 4)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                img,
                width: width * 0.08,
              ),
              MyTextLato(
                text: planName,
                fontSize: width * 0.042,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              )
            ],
          ),
          SizedBox(height: width * 0.025),
          MyTextQuickSand(
              text: planAmount,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: width * 0.04),
          SizedBox(height: width * 0.003),
          MyTextLato(
              text: 'Per Month', color: Colors.black, fontSize: width * 0.025),
          SizedBox(height: width * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextLato(
                  text: 'Ads You Show',
                  color: Colors.black,
                  fontSize: width * 0.025),
              MyTextQuickSand(
                text: numberOfAds,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: width * 0.04,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextLato(
                  text: 'Validity For Days',
                  color: Colors.black,
                  fontSize: width * 0.025),
              MyTextQuickSand(
                  text: numberOfDays,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: width * 0.04)
            ],
          ),
          SizedBox(height: width * 0.025),
          Container(
            padding: EdgeInsets.all(width * 0.01),
            width: width * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.01),
                color: appColor2),
            child: Center(
              child: MyTextQuickSand(
                text: 'Select Plan',
                color: Colors.black,
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
