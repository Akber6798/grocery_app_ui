import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';


class SplashSCreenOne extends StatelessWidget {
  const SplashSCreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: const BoxDecoration(
                  color: splashScreenContainerColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/splashscreenone.png'))),
            ),
            const SizedBox(height: 40),
            const Text('Shop for your daily needs',
                style: splashScreenMainTextStyle),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Set your delivery location. Choose your \n groceries from a wide range of our \n required products',
              style: splashScreenSubTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
