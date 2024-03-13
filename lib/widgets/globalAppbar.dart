import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double width;

  CustomAppBar({required this.width});

  @override
  Size get preferredSize => Size.fromHeight(width * 0.185);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      backgroundColor: Colors.black,
      automaticallyImplyLeading: false,
      title: Center(
        child: Image.asset(
          'assets/images/img_wanted_1_1.png',
          width: width * 0.32,
        ),
      ),
      centerTitle: true,
    );
  }
}
