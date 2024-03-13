import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextQuickSand extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  const MyTextQuickSand({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.textDecoration,
  });
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: GoogleFonts.quicksand(
          fontSize: fontSize ?? width*0.06,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: color ?? Colors.white,
          height: height ?? (heights > 650 ? heights / 600 : heights / 600),
          decoration: textDecoration ?? TextDecoration.none),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
class MyTextLato extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
  const MyTextLato({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.textDecoration,
    this.decorationColor
  });
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: GoogleFonts.lato(
          fontSize: fontSize ?? width*0.03,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: color ?? Colors.white,
          height: height ?? (heights > 650 ? heights / 600 : heights / 600),
          decoration: textDecoration ?? TextDecoration.none,
        decorationColor: decorationColor
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
class MyTextHelvetica extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  const MyTextHelvetica({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.textDecoration,
  });
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize ?? width / 28,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: color ?? Colors.black,
          height: height ?? (heights > 650 ? heights / 600 : heights / 600),
          decoration: textDecoration ?? TextDecoration.none,
          fontFamily: "Helvetica"),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}




