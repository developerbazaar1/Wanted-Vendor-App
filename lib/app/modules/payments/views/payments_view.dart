import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';

import '../controllers/payments_controller.dart';

class PaymentsView extends GetView<PaymentsController> {
  @override
  PaymentsController controller = Get.put(PaymentsController());
  var argument = Get.arguments;
  PaymentsView({super.key});
  @override
  Widget build(BuildContext context) {
    argument ??= false;
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var value = Get.arguments;
    value ??= false;
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
              HeadingElement(text: 'Payment History',argu: value),
              SizedBox(
                height: height * 0.005,
              ),
              MyTextQuickSand(
                text: 'View Payment History',
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.048,
              ),
              SizedBox(
                height: height * 0.027,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
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
                              'Description',
                              'Amount',
                              'Status',
                            ],
                            isHeader: true),
                        for (List<dynamic> rowData in controller.dynamicData)
                          _buildTableRow(width, height, context,
                              rowData.map((e) => e.toString()).toList()),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
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
                    : index == cells.length - 2
                        ? Center(
                            child: Padding(
                            padding: EdgeInsets.only(top: width * 0.05),
                            child: MyTextQuickSand(
                              text: cells[index],
                              color: Colors.black,
                              fontSize: width * 0.033,
                              fontWeight: FontWeight.w600,
                            ),
                          ))
                        : index == cells.length - 1
                            ? Center(
                                child: Padding(
                                padding: EdgeInsets.only(top: width * 0.05),
                                child: MyTextQuickSand(
                                  text: cells[index],
                                  color: cells[index] == 'Canceled'
                                      ? Colors.red
                                      : appColor,
                                  fontSize: width * 0.033,
                                  fontWeight: FontWeight.w500,
                                ),
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
