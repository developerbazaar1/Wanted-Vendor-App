import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:wanted/app/modules/addAdvert/views/add_advert_view.dart';
import 'package:wanted/app/modules/home/views/home_view.dart';
import 'package:wanted/app/modules/payments/views/payments_view.dart';
import 'package:wanted/app/modules/profile/views/profile_view.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/size_utils.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Obx(
        () => _getBodyForIndex(controller.currentIndex.value),
      ),
      floatingActionButton:  Container(
        height: width*0.18,
        width: width*0.18,
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: appColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(180),
              border: Border.all(
                color: Colors.white,
                width: height*width*0.00002,

              ),
            ),
            child: SvgPicture.asset('assets/images/scanner.svg',width: width*0.07,)
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() => Stack(
        children: [
          Container(
            height: height*0.11,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: appColor2, // Set the desired background color
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              elevation: 0,
              selectedFontSize: width*0.036,
              unselectedFontSize: width*0.036,
              backgroundColor: appColor2,
              selectedItemColor: Colors.black,
              // Set to your desired color
              unselectedItemColor: Colors.grey,
              // Set to the same color as selectedItemColor
              iconSize:width*0.08,
              selectedIconTheme: const IconThemeData(color: Colors.black),

              // Set to your desired color
              unselectedIconTheme: const IconThemeData(color: Colors.grey),

              //
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.currentIndex.value,
              onTap: (index) {
                controller.changeIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,

                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_card_outlined,

                  ),
                  label: 'Add Advert',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.payments_outlined,

                  ),
                  label: 'Payments',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,),
                    label: 'Profile',
                ),
              ],
            ),
          ),
        ],
      ),)
    );
  }

  Widget _getBodyForIndex(int index) {
    switch (index) {
      case 0:
        return HomeView();
    // Replace with your home widget
      case 1:
        return AddAdvertView();
        // Replace with your rewards widget
      case 2:
        return PaymentsView();// Replace with your add widget
      case 3:
        return ProfileView(); // Replace with your wishlist widget
      default:
        return Container(
          child: Center(child: Text("default")),
        );
    }
  }
}
