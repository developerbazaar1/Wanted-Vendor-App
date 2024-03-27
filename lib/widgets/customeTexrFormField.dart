import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';

class MyTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String? headingText;
  final String hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final Widget? suffix;
  final double? textFieldHeight;
  final FocusNode? focusNode;
  final Function(String)? onSubmit;
  final String? validator;
  const MyTextFeild({
    super.key,
    required this.controller,
    required this.hintText,
    this.headingText,
    this.textFieldHeight,
    this.suffix,
    this.fillColor,
    this.validator,
    this.focusNode,
    this.onSubmit,
    this.maxLines,
    this.hintTextColor,
  });

  @override
  Widget build(BuildContext context) {
    var fieldValue;
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
          text: headingText ?? '',
          fontSize: width * 0.040,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: height * 0.007),
        SizedBox(
          // height: textFieldHeight ?? height * 0.05,
          child: TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            cursorColor: Colors.black,
            maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              suffixIcon: suffix ?? const SizedBox(),
              contentPadding: EdgeInsets.only(top: 0, left: width * 0.03),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              hintStyle: GoogleFonts.quicksand(
                color: Colors.black,
                fontSize: width * 0.038,
                fontWeight: FontWeight.w400,
              ),
              fillColor: fillColor ?? Colors.transparent,
              filled: true,
              border: lineBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width * 0.012),
                borderSide: BorderSide(color: appColor, width: width * 0.003),
              ),
              enabledBorder: lineBorder,
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              focusColor: Colors.black,
            ),

            validator: (value) {
              if (validator == "Password") {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }


                // Password validation: At least 6 characters
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              } else if (value == null || value.isEmpty) {
                return 'Please enter the Value';
              }
            },
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
  final double? headingTextSize;
  final String? hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final bool borderRequires;
  final Function(String)? onSubmit;
  final String? Function(String?)? validator;

  MyTextFeildMessage({
    super.key,
    required this.controller,
    required this.headingText,
    this.headingTextSize,
    this.hintText,
    this.borderRequires = true,
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
        width: borderRequires ? width * 0.003 : 0,
        color: borderRequires ? Colors.black : Colors.white,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.02),
        MyTextQuickSand(
          text: headingText,
          fontSize: headingTextSize ?? width * 0.040,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: height * 0.007),
        SizedBox(
          // height: height*0.5,
          child: TextFormField(
            maxLength: 500,
            minLines: 4,
            // Set the minimum number of lines
            maxLines: null,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: controller,
            cursorColor: Colors.black,
            // maxLines: maxLines ?? 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 0, left: width * 0.03),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: hintText,
              hintStyle: GoogleFonts.quicksand(
                color: Colors.black,
                fontSize: width * 0.038,
                fontWeight: FontWeight.w400,
              ),
              fillColor: fillColor ?? Colors.transparent,
              filled: true,
              border: lineBorder,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(width * 0.012),
                borderSide: BorderSide(color: appColor, width: width * 0.003),
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

class MyAuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Color? hintTextColor;
  final Color? fillColor;
  final int? maxLines;
  final FocusNode? focusNode;
  final bool borderRequires;
  final Function(String)? onSubmit;
  final String img;
  final String validatorText;

  MyAuthTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validatorText,
    required this.img,
    this.borderRequires = true,
    this.fillColor,
    this.focusNode,
    this.onSubmit,
    this.maxLines,
    this.hintTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    OutlineInputBorder lineBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(width * 0.012),
      borderSide: BorderSide(
        width: borderRequires ? width * 0.003 : 0,
        color: borderRequires ? Colors.black : Colors.white,
      ),
    );

    String? validateEmail(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter an email address';
      }
      // Basic email validation
      final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegExp.hasMatch(value)) {
        return 'Please enter a valid email address';
      }
      return null;
    }

    String? validatePassword(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a password';
      }
      // Password validation: At least 6 characters
      if (value.length < 6) {
        return 'Password must be at least 6 characters long';
      }
      return null;
    }

    String? validateUsername(String? value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a username';
      }
      // Username validation: Only alphanumeric characters and underscores
      final usernameRegExp = RegExp(r'^[a-zA-Z0-9_]+$');
      if (!usernameRegExp.hasMatch(value)) {
        return 'Username can only contain letters, numbers, and underscores';
      }
      return null;
    }

    return TextFormField(
      minLines: 1,
      maxLines: null,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: width * 0.03),
        contentPadding: const EdgeInsets.only(top: 0),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        prefixIcon: IconButton(
          icon: SvgPicture.asset(
            img,
            width: width * 0.04,
          ),
          onPressed: () {},
        ),
        fillColor: fillColor ?? Colors.white,
        filled: true,
        border: lineBorder,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(width * 0.015),
          borderSide: BorderSide(color: Colors.blue, width: width * 0.003),
        ),
        enabledBorder: lineBorder,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusColor: Colors.black,
      ),
      validator: (validatorText == 'Email')
          ? validateEmail
          : (validatorText == 'Password')
              ? validatePassword
              : (validatorText == 'UserName')
                  ? validateUsername
                  : null,
      focusNode: focusNode,
      onFieldSubmitted: onSubmit,
    );
  }
}
