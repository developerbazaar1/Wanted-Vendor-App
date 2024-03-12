import 'package:flutter/cupertino.dart';
import 'package:wanted/utils/color.dart';

import '../utils/textStyle.dart';

Widget customeButton(var width, var height,String text) {
return Container
(
width: width * 0.36,
height: height * 0.05,
    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width*0.01), color: appColor),
      child: Center(
          child: Text(
        text,
        style: buttonTextStyle,
      )));

}