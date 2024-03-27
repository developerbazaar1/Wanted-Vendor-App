import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanted/utils/myText.dart';

class HeadingElement extends StatelessWidget {
  var argu;
  String text;

  HeadingElement({super.key, this.argu = true,required this.text} );
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .sizeOf(context)
        .width;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: width * 0.01, left: width * 0.03),
                child: argu
                    ? Icon(
                  Icons.arrow_back_ios,
                  size: width * 0.06,
                )
                    : SizedBox(
                  width: width * 0.05,
                ),
              )),
        ),
        // SizedBox(
        //   width: width * 0.15,
        // ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:  EdgeInsets.
    only(left: width*0.0),
            child: MyTextQuickSand(
              text: text,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: width * 0.06,
            ),
          ),
        ),
      ],
    );

  }
}
