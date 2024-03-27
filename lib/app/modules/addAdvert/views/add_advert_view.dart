import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/customeDropdown.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';
import 'package:wanted/widgets/selectPlanCustomeWidget.dart';

import '../controllers/add_advert_controller.dart';

class AddAdvertView extends GetView<AddAdvertController> {
  TextEditingController c = TextEditingController();
  final TextEditingController _controller = TextEditingController();
  var argu = Get.arguments;
  @override
  AddAdvertController controller = AddAdvertController();

  @override
  Widget build(BuildContext context) {
    if (argu == null) {
      argu = false;
    }

    print(argu);
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    var value = Get.arguments;
    if (value == null) {
      value = false;
    }
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
              HeadingElement(text: 'Add New Advert', argu: value),
              MyTextFeild(
                controller: c,
                hintText: 'Enter your advert title',
                headingText: 'Advert Title:',
              ),
              Padding(
                padding: EdgeInsets.only(top: width * 0.035),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextQuickSand(
                      text: "Where To Show:",
                      fontSize: width * 0.040,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: height * 0.007),
                    Container(
                      width: width,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(width * 0.012),
                        border: Border.all(
                            color: Colors.black, width: width * 0.003),
                      ),
                      child: Obx(() => Padding(
                            padding: EdgeInsets.only(right: width * 0.028),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // Adjust the alignment as needed
                              children: [
                                Row(
                                  children: [
                                    Radio<String>(
                                      activeColor: appColor,
                                      value: 'Option 1',
                                      groupValue:
                                          controller.selectedOption.value,
                                      onChanged: (value) {
                                        controller.setSelectedOption(value!);
                                      },
                                    ),
                                    MyTextLato(
                                      text: 'Live Ads',
                                      color: Colors.black,
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Option 2',
                                      activeColor: appColor,
                                      groupValue:
                                          controller.selectedOption.value,
                                      onChanged: (value) {
                                        controller.setSelectedOption(value!);
                                      },
                                    ),
                                    MyTextLato(
                                      text: 'Latest Offer',
                                      color: Colors.black,
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<String>(
                                      value: 'Option 3',
                                      activeColor: appColor,
                                      groupValue:
                                          controller.selectedOption.value,
                                      onChanged: (value) {
                                        controller.setSelectedOption(value!);
                                      },
                                    ),
                                    MyTextLato(
                                      text: 'Services',
                                      color: Colors.black,
                                      fontSize: width * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextLato(
                      text: 'Upload Main Image:',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.040,
                    ),
                    Row(
                      children: [
                        Container(
                          height: width * 0.05,
                          width: width * 0.05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(color: Colors.black)),
                          child: Checkbox(
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              value: (true),
                              onChanged: (onChanged) {}),
                        ),
                        SizedBox(
                          width: width * 0.025,
                        ),
                        const MyTextLato(
                          text: 'Select Image From Portfolio',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    )
                  ],
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
                height: width * 0.012
              ),
              const MyTextLato(
                text: "PNG or JPG no bigger than 800px wide and tall.",
                color: Colors.black
              ),
              SizedBox(
                height: width * 0.07
              ),
              MyTextLato(
                text: 'Do You Want To Add Products ?',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.040,
              ),
              SizedBox(
                height: width * 0.025
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
                height: width * 0.06,
              ),
              Obx(() => controller.selectedOptionForProduct.value
                  ? customeDropDown(
                      width,
                      height,
                      'How Many Product do you have',
                      controller.dropdownItems,
                      'Select Number Of Products:',
                      (newValue) {
                        // Pass the function to setValue parameter
                        // This is the function you want to call when the dropdown value changes
                        controller.setNumberOfProduct(newValue.toString());
                        print('Selected value: $newValue');
                        // You can call any function here based on your requirement
                      },
                    )
                  : const SizedBox()),
              SizedBox(
                height: width * 0.025
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
                height: height * 0.01
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
                  Obx(() => CustomPlanListView(
                        dataList: controller.planList,
                        onTap: (index) {
                          controller.isSelectedPlanIndex.value = index;
                          controller.selectedPlanButton.value =
                              controller.planList[index].planName;
                        },
                        selectedIndex: controller.isSelectedPlanIndex.value,
                      )),
                  Obx(
                    () => ElevatedButton(
                      onPressed: () {
                        controller.isSelectedPlanIndex.value = 0;
                        controller.selectedPlanButton.value = controller
                            .planList[controller.isSelectedPlanIndex.value]
                            .planName;
                      },
                      child: MyTextQuickSand(
                        text: controller.isSelectedPlanIndex == -1
                            ? "Select Plan"
                            : 'You have Selected ${controller.selectedPlanButton.value}',
                        color: Colors.black,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //     Container(
                    //   padding: EdgeInsets.all(width * 0.015),
                    //   decoration: BoxDecoration(color: appColor),
                    //   child: MyTextQuickSand(
                    //     text: controller.isSelectedPlanIndex == -1
                    //         ? "Select Plan"
                    //         : 'You have Selected ${controller.selectedPlanButton.value}',
                    //     color: Colors.black,
                    //     fontSize: width * 0.05,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                  ),
                  SizedBox(height: width * 0.025),
                  ElevatedButton(
                      onPressed: () {},
                      child: MyTextQuickSand(
                        text: 'Submit',
                        color: Colors.black,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w600,
                      )),
                  // ElevatedButton(
                  //
                  //   style: ElevatedButton.styleFrom(
                  //
                  //     backgroundColor: appColor,
                  //     elevation: 0,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(3), // Adjust the value according to your preference
                  //     ),
                  //
                  //   ),
                  //   onPressed: (){}, child: MyTextQuickSand(
                  //   text: 'Submit',
                  //   color: Colors.black,
                  //   fontSize: width * 0.05,
                  //   fontWeight: FontWeight.w600,
                  // ),),
                  // Container(
                  //   padding: EdgeInsets.all(width * 0.015),
                  //   decoration: BoxDecoration(color: appColor),
                  //   child: MyTextQuickSand(
                  //     text: 'Submit',
                  //     color: Colors.black,
                  //     fontSize: width * 0.05,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),

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
          customeDropDown(
            width,
            height,
            'Product Category',
            controller.categoryItems,
            'Select Products Category:',
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
            'Product Sub Category',
            controller.subCategoryItems,
            'Select Products Sub Category:',
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
            'Sub-Sub Category',
            controller.subSubCategoryItems,
            'Select Sub-Sub Category:',
            (newValue) {
              print('Selected value: $newValue');
            },
          ),
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
// Container(
//   width: width,
//   height: height * 0.05,
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(width * 0.012),
//     border: Border.all(color: Colors.black, width: width * 0.003),
//   ),
//   child: Padding(
//     padding:  EdgeInsets.only(right: width*0.028),
//     child:  Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         MyTextLato(text: 'How Many Product do you have',color: Colors.black,fontWeight: FontWeight.w600,fontSize: width * 0.040,),
//
//         DropdownButtonHideUnderline(
//           child: DropdownButton<String>(
//             value: null, // You can set the default value to null
//             items: <String>['Edit', 'Delete'].map((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String? newValue) {
//               // Handle dropdown value change
//             },
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
//----------------------------------------------------------
// Container(
// color:Colors.red,
// height: 500,
// width: width,
//
// child:
//
// GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2, // Number of columns in the grid
// mainAxisSpacing: 15.0, // Spacing between rows
// crossAxisSpacing: 15.0,
// childAspectRatio: 0.8,
//
// ),
// itemCount: controller.planList.length,
// itemBuilder: (context, index) {
// return   Container(
// padding: EdgeInsets.all(width*0.009),
// // width: width*0.38,
// // height: width*0.48,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(width: 1,),
// borderRadius: BorderRadius.circular(5),
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.3),
// blurRadius: 8,
// spreadRadius: 4
// )
// ]
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Image.asset(controller.planList[index].img,width: width*0.08,),
// MyTextLato(text: controller.planList[index].planName,fontSize: width*0.042,color: Colors.black,fontWeight: FontWeight.w500,)
// ],),
// SizedBox(
// height: width * 0.025
// ),
// MyTextQuickSand(text: controller.planList[index].planAmount,color: Colors.black,fontWeight: FontWeight.w600,fontSize: width*0.04),
// SizedBox(
// height: width * 0.003
// ),
// MyTextLato(text: 'Per Month',color: Colors.black,fontSize: width*0.025),
// SizedBox(
// height: width * 0.025
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// MyTextLato(text: 'Ads You Show',color: Colors.black,fontSize: width*0.025),
// MyTextQuickSand(text: controller.planList[index].numberOfAds,color: Colors.black,fontWeight: FontWeight.w500,fontSize: width*0.04,)
// ],),
//
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// MyTextLato(text: 'Validity For Days',color: Colors.black,fontSize: width*0.025),
// MyTextQuickSand(text: controller.planList[index].numberOfDays,color: Colors.black,fontWeight: FontWeight.w500,fontSize: width*0.04)
// ],),
// SizedBox(
// height: width * 0.025
// ),
// Container(
// padding: EdgeInsets.all(width*0.01),
// width: width*0.3,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(width*0.01),
// color: appColor2
// ),
// child: Center(child: MyTextQuickSand(text: 'Select Plan',color: Colors.black,fontSize: width*0.04,fontWeight: FontWeight.w600,),),),
//
// ],),
// ); Container(
// padding: EdgeInsets.all(width*0.009),
//
// // width: width*0.38,
// // height: width*0.48,
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(width: 1,),
// borderRadius: BorderRadius.circular(5),
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.3),
// blurRadius: 8,
// spreadRadius: 4
// )
// ]
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Image.asset(controller.planList[index].img,width: width*0.08,),
// MyTextLato(text: controller.planList[index].planName,fontSize: width*0.042,color: Colors.black,fontWeight: FontWeight.w500,)
// ],),
// SizedBox(
// height: width * 0.025
// ),
// MyTextQuickSand(text: controller.planList[index].planAmount,color: Colors.black,fontWeight: FontWeight.w600,fontSize: width*0.04),
// SizedBox(
// height: width * 0.003
// ),
// MyTextLato(text: 'Per Month',color: Colors.black,fontSize: width*0.025),
// SizedBox(
// height: width * 0.025
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// MyTextLato(text: 'Ads You Show',color: Colors.black,fontSize: width*0.025),
// MyTextQuickSand(text: controller.planList[index].numberOfAds,color: Colors.black,fontWeight: FontWeight.w500,fontSize: width*0.04,)
// ],),
//
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// MyTextLato(text: 'Validity For Days',color: Colors.black,fontSize: width*0.025),
// MyTextQuickSand(text: controller.planList[index].numberOfDays,color: Colors.black,fontWeight: FontWeight.w500,fontSize: width*0.04)
// ],),
// SizedBox(
// height: width * 0.025
// ),
// Container(
// padding: EdgeInsets.all(width*0.01),
// width: width*0.3,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(width*0.01),
// color: appColor2
// ),
// child: Center(child: MyTextQuickSand(text: 'Select Plan',color: Colors.black,fontSize: width*0.04,fontWeight: FontWeight.w600,),),),
//
// ],),
// );
// },),
// )
