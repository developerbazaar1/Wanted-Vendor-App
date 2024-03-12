import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wanted/utils/size_utils.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    SizeUtils.instance.init(context); // Initialize SizeUtils with context

    // Delay for 2 seconds and then navigate to the main screen
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/login');
      // Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
    });

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splashScreenBg.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: AnimatedSplashScreen(),
          ),
        ],
      ),
    );
  }
}

class AnimatedSplashScreen extends StatefulWidget {
  @override
  _AnimatedSplashScreenState createState() => _AnimatedSplashScreenState();
}

class _AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Create a Tween to define the range of scale values
    _animation = Tween<double>(begin: 2.0, end: 0.8).animate(_animationController);

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    // Dispose of the animation controller when not needed
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: Image.asset('assets/images/img_wanted_1_1.png'),
    );
  }
}

