import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/app/modules/postAgainAdvert/views/post_again_advert_view.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/utils/textStyle.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';
import '../controllers/advert_show_case_controller.dart';

class AdvertShowCaseView extends GetView<AdvertShowCaseController> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: CustomAppBar(
        width: width,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.02, horizontal: width * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeadingElement(text: 'Advert Showcase'),
            SizedBox(height: height * 0.005),
            MyTextQuickSand(
              text: 'Display Your Advertisments',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: width * 0.055,
            ),
            SizedBox(height: height * 0.008),
            MyTextQuickSand(
              text: 'A Space for Your Ad Campaigns',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: width * 0.044,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: width * 0.034),
              width: width * 0.4,
              height: height * 0.045,
              decoration: BoxDecoration(
                  color: appColor2,
                  borderRadius: BorderRadius.circular(width * 0.02)),
              child: Center(
                  child: InkWell(
                onTap: () {
                  Get.toNamed('/buy-subscription');
                },
                child: MyTextQuickSand(
                  text: 'Buy Subscription',
                  color: Colors.black,
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),

            ElevatedButton(onPressed: (){
              Get.toNamed('/add-advert', arguments: true);

            }, child:
            SizedBox(
              width: width*0.48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextQuickSand(
                    text: 'Add New Advert',
                    color: Colors.black,
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: width*0.02,),
                  Icon(Icons.add_circle_outline,color: Colors.black,)
                ],
              ),
            ),),
            // InkWell(
            //   onTap: () {
            //     Get.toNamed('/add-advert', arguments: true);
            //   },
            //   child: Container(
            //     width: width * 0.6,
            //     height: height * 0.045,
            //     decoration: BoxDecoration(
            //         color: appColor,
            //         borderRadius: BorderRadius.circular(width * 0.02)),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         MyTextQuickSand(
            //           text: 'Add A New Advert',
            //           color: Colors.black,
            //           fontSize: width * 0.04,
            //           fontWeight: FontWeight.w600,
            //         ),
            //         SizedBox(
            //           width: width * 0.03,
            //         ),
            //         const Icon(Icons.add_circle_outline)
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Table(
                      defaultColumnWidth: const IntrinsicColumnWidth(),
                      children: [
                        _buildTableRow(
                            width,
                            height,
                            context,
                            [
                              'S.No.',
                              'Advert Name',
                              'Where To Show',
                              'Advert Price',
                              'Creation Date',
                              'Expire Data',
                              'Status',
                              'Manage Advert',
                              'Show/Hide Ads'
                            ],
                            isHeader: true),
                        for (List<dynamic> rowData in controller.dynamicData)
                          _buildTableRow(width, height, context,
                              rowData.map((e) => e.toString()).toList()),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleDropdownItemClick(
      String selectedItem, BuildContext context, var width) async {
    if (selectedItem == 'Preview') {
      Get.toNamed('/advert-preview');
      print('Selected fruit is Preview');
    } else if (selectedItem == 'Post Again') {
      Get.toNamed('/post-again-advert');
      print('Selected fruit is Post Again');
    } else if (selectedItem == 'Edit Advert') {
      Get.toNamed('/edit-advert');
      print('Selected fruit is Edit Advert');
    } else if (selectedItem == 'Delete') {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const Border.symmetric(),
            actionsAlignment: MainAxisAlignment.center,
            title: MyTextQuickSand(
              text: 'Do You Want To Delete It?',
              color: Colors.black,
              fontSize: width * 0.05,
              fontWeight: FontWeight.w500,
            ),
            actions: [
              Container(
                width: width * 0.15,
                height: width * 0.07,
                decoration: BoxDecoration(color: appColor),
                child: Center(
                    child: MyTextQuickSand(
                  text: 'Yes',
                  color: Colors.black,
                  fontSize: width * 0.045,
                  fontWeight: FontWeight.w500,
                )),
              ),
              SizedBox(
                width: width * 0.025,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: width * 0.15,
                  height: width * 0.07,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Center(
                      child: MyTextQuickSand(
                    text: 'No',
                    color: Colors.black,
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.w500,
                  )),
                ),
              )
            ],
          );
        },
      );
    }
  }

  TableRow _buildTableRow(
      var width, var height, var context, List<String> cells,
      {bool isHeader = false, List<Color>? colors}) {
    return TableRow(
      children: List.generate(
        cells.length,
        (index) => TableCell(
          child: Container(
            padding: EdgeInsets.all(width * 0.025),
            color:
                isHeader ? appColor2 : (colors != null ? colors[index] : null),
            child: SizedBox(
                width: width * 0.28,
                child: isHeader
                    ? MyTextQuickSand(
                        text: cells[index],
                        color: Colors.black,
                        fontSize: width * 0.034,
                        fontWeight: FontWeight.bold,
                        maxLines: 1,
                      )
                    : index == cells.length - 2 // Index of 'Manage Advert'
                        ? Padding(
                            padding: EdgeInsets.only(top: width * 0.022),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                icon: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: width * 0.053,
                                ),
                                hint: MyTextQuickSand(
                                  text: 'Manage Advert',
                                  color: Colors.black,
                                  fontSize: width * 0.03,
                                  fontWeight: FontWeight.w600,
                                ),
                                isExpanded: false,
                                value: null,
                                // You can set the default value to null
                                items: controller.valueIconMap.entries
                                    .map((MapEntry<String, IconData> entry) {
                                  return DropdownMenuItem<String>(
                                    value: entry.key,
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Icon(
                                          entry.value,
                                          size: width * 0.04,
                                          color: entry.key == 'Delete'
                                              ? Colors.red
                                              : Colors.black,
                                        ),
                                        SizedBox(
                                          width: width * 0.01,
                                        ),
                                        MyTextQuickSand(
                                          text: entry.key,
                                          fontSize: width * 0.03,
                                          color: entry.key == 'Delete'
                                              ? Colors.red
                                              : Colors.black,
                                          fontWeight: FontWeight.w500,
                                        )
                                      ],
                                    ),
                                  );
                                }).toList(),

                                onChanged: (String? newValue) {
                                  print(
                                      '///////////////////////////////////////////');
                                  _handleDropdownItemClick(
                                      newValue!, context, width);

                                  print(newValue);
                                  // Handle dropdown value change
                                },
                              ),
                            ),
                          )
                        : index == cells.length - 1 // Index of 'Show/Hide Ads'
                            ? Padding(
                                padding: EdgeInsets.only(top: width * 0.05),
                                child: Switch(
                                    activeColor: appColor,
                                    activeTrackColor: Colors.green.shade200,
                                    inactiveThumbColor: Colors.black,
                                    inactiveTrackColor: Colors.grey.shade400,
                                    value: cells[index] == 'true',
                                    onChanged: (value) {}),
                              )
                            : index == cells.length - 3
                                ? Padding(
                                    padding: EdgeInsets.only(top: width * 0.05),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: cells[index] == 'Active'
                                              ? appColor
                                              : Colors.red,
                                          borderRadius: BorderRadius.circular(
                                              width * 0.01)),
                                      margin:
                                          EdgeInsets.only(right: width * 0.07),
                                      height: height * 0.04,
                                      child: Center(
                                          child: MyTextQuickSand(
                                        text: cells[index],
                                        color: Colors.black,
                                        fontSize: width * 0.034,
                                        fontWeight: FontWeight.w500,
                                        maxLines: 4,
                                      )),
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(top: width * 0.05),
                                    child: MyTextQuickSand(
                                      text: cells[index],
                                      color: Colors.black,
                                      fontSize: width * 0.032,
                                      fontWeight: FontWeight.w500,
                                      maxLines: 4,
                                    ),
                                  )),
          ),
        ),
      ),
    );
  }
}
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(
//         height: height*0.05,
//         decoration: BoxDecoration(
//             color: appColor2
//         ),
//         child: Padding(
//           padding:  EdgeInsets.symmetric(horizontal: width*0.01),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               MyTextQuickSand(text: 'S.No.',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500,),
//               MyTextQuickSand(text: 'Advert Name',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Where To Show',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Advert Price',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Advert Price',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Advert Price',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Advert Price',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//               MyTextQuickSand(text: 'Advert Price',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//             ],),
//
//         ),
//       ),
//       SizedBox(height: height*0.02),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//         children: [
//         MyTextQuickSand(text: '01',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500,),
//
//           SizedBox(
//             width: 80,
//             child: MyTextQuickSand(text: 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500,maxLines: 4,textAlign: TextAlign.start,)),
//         MyTextQuickSand(text: 'Live Ads',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//         MyTextQuickSand(text: '£39.99',color: Colors.black,fontSize: width*0.036,fontWeight: FontWeight.w500),
//       ],),
//
//
//
//
//     ],
//   ),
// )
// TableRow _buildTableRow(List<String> cells,
//     {bool isHeader = false, List<Color>? colors}) {
//   return TableRow(
//     children: List.generate(
//       cells.length,
//           (index) =>
//           TableCell(
//             child: Container(
//               padding: EdgeInsets.all(8.0),
//               color: isHeader ? appColor2 : (colors != null
//                   ? colors[index]
//                   : null),
//               child: SizedBox(
//                 width: 110,
//                 child:
//
//                 Text(
//                   cells[index],
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: isHeader?1 :4,
//                   style: TextStyle(
//                       fontWeight: isHeader ? FontWeight.bold : FontWeight
//                           .normal,
//
//                   ),
//                 ),
//               ),
//             ),
//           ),
//     ),
//   );
// }
