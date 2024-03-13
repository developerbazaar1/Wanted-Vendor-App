import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/advert_show_case_controller.dart';

class AdvertShowCaseView extends GetView<AdvertShowCaseController> {
  final List<List<String>> dynamicData = [
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],
    ['01', 'Up to 37% Off on Nail Spa/Salon - Shellac / No-Chip / Gel', 'Live Ads', '£39.99','12/09/2023','12/09/2023','Active','Manage Avert','togalbutton'],

    // Add more dynamic data rows as needed
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .sizeOf(context)
        .width;
    var height = MediaQuery
        .sizeOf(context)
        .height;
    return Scaffold(
      appBar: CustomAppBar(
        width: width,
      ),
      body: Stack(
          children: [
          Positioned(
          top: width * 0.05, left: width * 0.05, child: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back_ios))),
      Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        Padding(
        padding: EdgeInsets.symmetric(vertical: width * 0.044),
        child: MyTextQuickSand(
          text: 'Advert Showcase',
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: width * 0.066,
        ),
      ),
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
            borderRadius: BorderRadius.circular(8)
        ),
        child: Center(child: MyTextQuickSand(text: 'Buy Subscription',
          color: Colors.black,
          fontSize: width * 0.04,
          fontWeight: FontWeight.w600,)),
      ),
      Container(
        width: width * 0.6,
        height: height * 0.045,
        decoration: BoxDecoration(
            color: appColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextQuickSand(text: 'Add A New Advert',
              color: Colors.black,
              fontSize: width * 0.04,
              fontWeight: FontWeight.w600,),
            SizedBox(width: width * 0.03,),
            const Icon(Icons.add_circle_outline)

          ],
        ),
      ),
      SizedBox(height: height * 0.02),


      Expanded(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Table(
                defaultColumnWidth: IntrinsicColumnWidth(),
                children: [
                  _buildTableRow(
                      ['S.No.', 'Advert Name', 'Where To Show', 'Advert Price','Creation Date','Expire Data','Status','Manage Advert','Show/Hide Ads'],
                      isHeader: true),
                  for (var rowData in dynamicData)
                    _buildTableRow(rowData),
                ],
              ),
            ),
          ),
        ),
      ) //     crossAxisAlignment: CrossAxisAlignment.start,
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
      ],
    ),)
    ,
    ]
    ,
    )
    ,
    );
  }

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
  TableRow _buildTableRow(List<String> cells,
      {bool isHeader = false, List<Color>? colors}) {
    return TableRow(
      children: List.generate(
        cells.length,
            (index) => TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: isHeader ? appColor2 : (colors != null
                ? colors[index]
                : null),
            child: SizedBox(
              width: 110,
              child: isHeader
                  ? Text(
                cells[index],
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
                  : index == cells.length - 2 // Index of 'Manage Advert'
                  ? DropdownButton<String>(
                value: null, // You can set the default value to null
                items: <String>['Edit', 'Delete'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle dropdown item selection here
                },
              )
                  : index == cells.length - 1 // Index of 'Show/Hide Ads'
                  ? Switch(activeColor: Colors.white,
                  activeTrackColor: Colors.green,inactiveThumbColor: Colors.white,inactiveTrackColor: Colors.red,value: true, onChanged: (value){})
                  : Text(
                cells[index],
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


}
