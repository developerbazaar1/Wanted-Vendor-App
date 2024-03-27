import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';

import '../controllers/customer_inquiries_controller.dart';

class CustomerInquiriesView extends GetView<CustomerInquiriesController> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
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
              HeadingElement(text: 'Customer Inquiry'),
              SizedBox(
                height: height * 0.015,
              ),
              MyTextQuickSand(
                text: 'Stay Connected with Your Customers',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: width * 0.045,
              ),
              SizedBox(
                height: height * 0.008,
              ),
              PopupMenuButton<String>(
                icon: SvgPicture.asset('assets/images/filterIcon.svg'),
                color: Colors.white,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'category',
                    child: Text('Filter by Category'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'date',
                    child: Text('Filter by Date'),
                  ),
                ],
                onSelected: (String value) {
                  if (value == 'category') {
                    // Implement your logic for filtering by category
                  } else if (value == 'date') {
                    // Implement your logic for filtering by date
                  }
                },
              ),
              SizedBox(
                height: height * 0.008,
              ),
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
                                'Date',
                                'Category',
                                'Product Name',
                                'Inquiry Details',
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
        ));
  }

  void showFilterMenu(BuildContext context) {
    showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(0, 0, 0, 0),
      items: <PopupMenuEntry>[
        const PopupMenuItem(
          child: Text('Filter by Category'),
          value: 'category',
        ),
        const PopupMenuItem(
          child: Text('Filter by Date'),
          value: 'date',
        ),
        // Add more items as needed
      ],
      elevation: 8.0,
    ).then((value) {
      // Handle the selected option
      if (value == 'category') {
        // Implement your logic for filtering by category
      } else if (value == 'date') {
        // Implement your logic for filtering by date
      }
    });
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
                width: width * 0.25,
                child: isHeader
                    ? MyTextQuickSand(
                        text: cells[index],
                        color: Colors.black,
                        fontSize: width * 0.034,
                        fontWeight: FontWeight.bold,
                        maxLines: 1,
                      )
                    : index == cells.length - 1
                        ? Center(
                            child: Padding(
                            padding: EdgeInsets.only(top: width * 0.05),
                            child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: const Border.symmetric(),
                                        actionsAlignment:
                                            MainAxisAlignment.center,
                                        title: Stack(
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: MyTextQuickSand(
                                                  text: 'Inquiry Details',
                                                  color: Colors.black,
                                                  fontSize: width * 0.04,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: InkWell(
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                    child: Icon(Icons.close)))
                                          ],
                                        ),
                                        content: SizedBox(
                                          height: height * 0.11,
                                          child: Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  MyTextLato(
                                                    text: 'Customer Name:',
                                                    color: Colors.grey.shade800,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  MyTextLato(
                                                    text: 'Allyson Rollins',
                                                    color: Colors.black,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.025,
                                                  ),
                                                  MyTextLato(
                                                    text: 'Phone No.:',
                                                    color: Colors.grey.shade800,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  MyTextLato(
                                                    text: '90009-90009',
                                                    color: Colors.black,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: width * 0.06,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  MyTextLato(
                                                    text: 'Date & Time:',
                                                    color: Colors.grey.shade800,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  MyTextLato(
                                                    text:
                                                        'Tuesday, 12 Sept 2023',
                                                    color: Colors.black,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.025,
                                                  ),
                                                  MyTextLato(
                                                    text: 'Email Address:',
                                                    color: Colors.grey.shade800,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  MyTextLato(
                                                    text: 'abc@gmail.com',
                                                    color: Colors.black,
                                                    fontSize: width * 0.032,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: MyTextQuickSand(
                                  text: cells[index],
                                  color: appColor,
                                  fontSize: width * 0.033,
                                  fontWeight: FontWeight.w500,
                                )),
                          ))
                        : Padding(
                            padding: EdgeInsets.only(top: width * 0.05),
                            child: MyTextQuickSand(
                              text: cells[index],
                              color: Colors.black,
                              fontSize: width * 0.033,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
          ),
        ),
      ),
    );
  }
}
