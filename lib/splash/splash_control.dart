import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/splash/splash_one_screen.dart';
import 'package:grocery_ui/splash/splash_three_screen.dart';
import 'package:grocery_ui/splash/splash_two_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreenControl extends StatefulWidget {
  const SplashScreenControl({super.key});

  @override
  State<SplashScreenControl> createState() => _SplashScreenControlState();
}

class _SplashScreenControlState extends State<SplashScreenControl> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: controller,
        children: [const SplashSCreenOne(), const SplashScreenTwo(), const SplashScreenThree()],
      ),
      Container(
        alignment: const Alignment(0, 0.65),
        child: SmoothPageIndicator(
          effect: const ScaleEffect(
            dotColor: Color(0xFFDDEED4),
            activeDotColor: buttonColor,
            dotHeight: 8,
            dotWidth: 8,
          ),
          controller: controller,
          count: 3,
        ),
      )
    ]));
  }
}
