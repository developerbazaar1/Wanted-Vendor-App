import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/myText.dart';
import 'package:wanted/widgets/dotedborder.dart';
import 'package:wanted/widgets/globalAppbar.dart';
import 'package:wanted/widgets/headingElement.dart';

import '../controllers/aboun_wanted_privacy_controller.dart';

class AbounWantedPrivacyView extends GetView<AbounWantedPrivacyController> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar:CustomAppBar(width: width,),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.03),            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingElement(text: 'About Wanted & Privacy'),
                SizedBox(height: height*0.005,),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //       horizontal: width * 0.05, vertical: height * 0.02),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.only(top: width * 0.015),
                //         child: InkWell(
                //             onTap: () {
                //               Get.back();
                //             },
                //             child: Icon(
                //               Icons.arrow_back_ios,
                //               size: width * 0.06
                //               ,
                //             )),
                //       ),
                //       SizedBox(
                //         width: width * 0.07,
                //       ),
                //       Column(
                //         children: [
                //           MyTextQuickSand(
                //             text: 'About Wanted & Privacy',
                //             color: Colors.black,
                //             fontWeight: FontWeight.w600,
                //             fontSize: width * 0.061,
                //           ),
                //
                //         ],
                //       ),
                //     ],
                //   ),
                // ),

                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyTextQuickSand(text: 'About Wanted',color: Colors.black,fontWeight: FontWeight.w600,),
                      SizedBox(height: height*0.01,),
                      Center(
                        child: SizedBox(
                          width: width,
                          child: CustomPaint(
                            painter: DashedBorderPainter(),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.03,),

                      MyTextLato(text: 'Lorem ipsum dolor sit amet consectetur. Pretium est condimentum eu ut. Lectus luctus ipsum auctor nullam. Integer facilisi non nisi amet neque. Tincidunt mattis placerat porta rhoncus. Commodo ullamcorper velit ut amet eros malesuada. Venenatis maecenas eleifend curabitur eget turpis enim. Accumsan arcu ac lorem eu eu eget tristique ac sed. Molestie gravida faucibus erat feugiat pharetra tristique. Gravida eget et integer elementum sed commodo ac leo. Condimentum vel mi tincidunt quisque fringilla. Semper fames lectus quis ut eget aliquam.',color: Colors.black,maxLines: 50,fontSize: width*0.045,),
                      SizedBox(height: height*0.03,),

                      const MyTextQuickSand(text: 'Wanted’s Privacy',color: Colors.black,fontWeight: FontWeight.w600,),
                      SizedBox(height: height*0.01,),
                      Center(
                        child: SizedBox(
                          width: width,
                          child: CustomPaint(
                            painter: DashedBorderPainter(),
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.03,),
                      MyTextLato(text: 'Lorem ipsum dolor sit amet consectetur. Pretium est condimentum eu ut. Lectus luctus ipsum auctor nullam. Integer facilisi non nisi amet neque. Tincidunt mattis placerat porta rhoncus. Commodo ullamcorper velit ut amet eros malesuada. Venenatis maecenas eleifend curabitur eget turpis enim. Accumsan arcu ac lorem eu eu eget tristique ac sed. Molestie gravida faucibus erat feugiat pharetra tristique. Gravida eget et integer elementum sed commodo ac leo. Condimentum vel mi tincidunt quisque fringilla. Semper fames lectus quis ut eget aliquam.',color: Colors.black,maxLines: 50,fontSize: width*0.045,),
                      SizedBox(height: height*0.03,),

                    ],
                  ),
                ),

                ],
                ),
          ),
        )

    );
  }
}
