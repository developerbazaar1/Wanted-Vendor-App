import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
class MyTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String headingText;
  final String hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function(String)? onSubmit;
  final String? Function(String?)? validator;
  const MyTextFeild({
    super.key,
    required this.controller,
    required this.headingText,
    required this.hintText,
    this.fillColor,
    this.validator,
    this.focusNode,
    this.onSubmit,
    this.maxLines,
    this.hintTextColor,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    OutlineInputBorder lineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.012),
      borderSide: BorderSide(
        width: width * 0.003,
        color: Colors.black,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),
        MyTextQuickSand(
          text: headingText,
          fontSize: width * 0.040,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: height * 0.007),
        SizedBox(
          height: height*0.05,
          child: TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            cursorColor: Colors.black,
            maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 0,left: width*0.03),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              hintStyle: GoogleFonts.quicksand(
                color:Colors.black,
                fontSize: width * 0.038,
                fontWeight: FontWeight.w400,
              ),
              fillColor: fillColor ?? Colors.transparent,
              filled: true,
              border: lineBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width * 0.012),
                borderSide:
                BorderSide(color: appColor, width: width * 0.003),
              ),
              enabledBorder: lineBorder,

              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusColor: Colors.black,
            ),
            validator: validator,
            focusNode: focusNode,
            onFieldSubmitted: onSubmit,
          ),
        ),
      ],
    );
  }
}
class MyTextFeildMessage extends StatelessWidget {
  final TextEditingController controller;
  final String headingText;
  final String? hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function(String)? onSubmit;
  final String? Function(String?)? validator;
  const MyTextFeildMessage({
    super.key,
    required this.controller,
    required this.headingText,
    this.hintText,
    this.fillColor,
    this.validator,
    this.focusNode,
    this.onSubmit,
    this.maxLines,
    this.hintTextColor,
  });
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    OutlineInputBorder lineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.012),
      borderSide: BorderSide(
        width: width * 0.003,
        color: Colors.black,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),
        MyTextQuickSand(
          text: headingText,
          fontSize: width * 0.040,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: height * 0.007),
        SizedBox(
          // height: height*0.5,
          child: TextFormField(
            maxLength: 500,
            minLines: 4, // Set the minimum number of lines
            maxLines: null,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            cursorColor: Colors.black,
            // maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 0,left: width*0.03),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              hintStyle: GoogleFonts.quicksand(
                color:Colors.black,
                fontSize: width * 0.038,
                fontWeight: FontWeight.w400,
              ),
              fillColor: fillColor ?? Colors.transparent,
              filled: true,
              border: lineBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width * 0.012),
                borderSide:
                BorderSide(color: appColor, width: width * 0.003),
              ),
              enabledBorder: lineBorder,

              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusColor: Colors.black,
            ),
            validator: validator,
            focusNode: focusNode,
            onFieldSubmitted: onSubmit,
          ),
        ),
      ],
    );
  }
}