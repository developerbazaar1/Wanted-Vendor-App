import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';

import '../controllers/rewards_hub_controller.dart';

class RewardsHubView extends GetView<RewardsHubController> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return  Scaffold(
        appBar:CustomAppBar(width: width,),
        body:  Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.05, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: width * 0.022),
                    child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: width * 0.06,weight: 1
                          ,
                        )),
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Column(
                    children: [
                      MyTextQuickSand(
                        text: 'Rewards Hub',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.061,
                      ),
                      SizedBox(height: height*0.01,),
                      MyTextQuickSand(
                        text: 'Track Customer Bonuses',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: width * 0.045,
                      )
                    ],
                  ),

                ],
              ),
              SizedBox(height: height*0.027,),
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
                              width,
                              height,context,
                              [
                                'S.No.',
                                'Date',
                                'User Name',
                                'Reward Description',
                                'Point Collected',
                                'Reward Used',
                              ],
                              isHeader: true),
                          for (List<dynamic> rowData
                          in controller.dynamicData)
                            _buildTableRow(width, height,context,
                                rowData.map((e) => e.toString()).toList()),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )

    );
  }

  TableRow _buildTableRow(var width, var height,var context, List<String> cells,
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
                    ? MyTextQuickSand(text: cells[index],color: Colors.black,fontSize: width*0.034,fontWeight: FontWeight.bold,maxLines: 1,)
                    : index == cells.length-2
                    ? Center(child:Padding(
                  padding: EdgeInsets.only(top: width*0.05),
                  child: Row(
                    children: [
                      MyTextQuickSand(text: cells[index],color: appColor,fontSize: width*0.033,fontWeight: FontWeight.w500,),
                      SizedBox(width: width*0.02,),
                      Icon(Icons.arrow_upward_rounded, size: width*0.045,color: appColor,)
                    ],
                  ),
                )): index == cells.length-4
                    ? Center(child:Padding(
                  padding: EdgeInsets.only(top: width*0.05),
                  child: MyTextQuickSand(text: cells[index],color: Colors.black,fontSize: width*0.033,fontWeight: FontWeight.w600,),
                ))
                    : Padding(
                  padding:  EdgeInsets.only(top: width*0.05),
                  child: MyTextQuickSand(text: cells[index],color: Colors.black,fontSize: width*0.033,fontWeight: FontWeight.w500,),
                )
            ),
          ),
        ),
      ),
    );
  }
}
