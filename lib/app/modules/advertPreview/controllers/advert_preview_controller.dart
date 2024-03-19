import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class AdvertPreviewController extends GetxController {
  //TODO: Implement AdvertPreviewController
  RxInt currentIndex = 0.obs;
  CarouselController carouselController = CarouselController();
  List<String> images = [
    'assets/images/Frame 30.png',
    'assets/images/Frame 30.png',
    'assets/images/Frame 30.png',
    'assets/images/Frame 30.png',



  ];
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
