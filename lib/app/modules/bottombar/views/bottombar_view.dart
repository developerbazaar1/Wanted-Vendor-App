import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wanted/utils/color.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: _getBodyForIndex(controller.currentIndex.value),
        floatingActionButton: FloatingActionButton(
          backgroundColor: appColor,
          shape: const CircleBorder(),
          onPressed: (){},
          child: Container(
            alignment: Alignment.center,
            decoration:
                BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                ),
            child: const Icon(Icons.document_scanner),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .centerDocked,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: (index) {
          controller.changeIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.red,
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_business_sharp,
              color: Colors.white,
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _getBodyForIndex(int index) {
    switch (index) {
      case 0:
        return const Placeholder(); // Replace with your home widget
      case 1:
        return const Placeholder(); // Replace with your rewards widget
      case 2:
        return const Placeholder(); // Replace with your wishlist widget
      case 3:
        return const Placeholder(); // Replace with your profile widget
      default:
        return Container();
    }
  }
}
