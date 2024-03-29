import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customTextField(String img, String hint,var width, var height, var controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 0),
        fillColor: Colors.white,
        filled: true,
        prefixIcon: IconButton(
          icon: SvgPicture.asset(
            img,
            width: width*0.04,
          ),
          onPressed: () {},
        ),
        hintText: hint,
        hintStyle: TextStyle(fontSize: width*0.03),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))),
  );
}
