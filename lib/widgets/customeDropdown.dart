import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';

Widget customeDropDown(var width,var height,String heading,List<String> dropdownList,String subHeading,Function(dynamic)? setValue,){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MyTextLato(
        text: heading,
        // 'How Many Product do you have',
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: width * 0.040,
      ),
      SizedBox(
        height: width * 0.025,
      ),
      SizedBox(
        height: height * 0.05,
        child: DropdownButtonFormField(
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(width*0.02),
          elevation: 2,
          items:
          dropdownList.map((String values) {
            return DropdownMenuItem(
              value: values,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.05),
                    child: MyTextQuickSand(text: values,color: Colors.black,fontSize: width*0.04,fontWeight: FontWeight.w600,textAlign: TextAlign.start,

                    ),
                  ),

                  // Text(values,style: TextStyle(color: Colors.red,fontSize: 10),),
                ],
              ),
            );
          }).toList(),
          onChanged: setValue != null ? (newValue) => setValue(newValue) : null,

          //     (newValue) {
          //   // Set the new value using the controller
          //   controller
          //       .setNumberOfProduct(newValue.toString());
          // },
          decoration: InputDecoration(
            contentPadding:
            EdgeInsets.only(top: 0, left: width * 0.03),
            floatingLabelBehavior:
            FloatingLabelBehavior.never,
            hintText: subHeading,
            // "Select the Number Of Options",
            hintStyle: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: width * 0.038,
              fontWeight: FontWeight.w400,
            ),
            fillColor: Colors.transparent,
            filled: true,
            border: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(width * 0.012),
              borderSide: BorderSide(
                width: width * 0.003,
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(width * 0.012),
              borderSide: BorderSide(
                  color: appColor, width: width * 0.003),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(width * 0.012),
              borderSide: BorderSide(
                width: width * 0.003,
                color: Colors.black,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            focusColor: Colors.black,
          ),

          // value: controller.selectNumberOfProduct.value,
          // decoration: InputDecoration(
          //   contentPadding: EdgeInsets.only(left: width*0.02,right: width*0.02),
          //   filled: true,
          //   fillColor: Colors.grey[200],
          //   hintText: 'Select the Number Of Options',
          // ),
        ),
      ),

    ],
  );
}
