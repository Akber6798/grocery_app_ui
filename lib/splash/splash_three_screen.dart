import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

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
                      image: AssetImage('assets/splashscreenthree.png'))),
            ),
            const SizedBox(height: 40),
            const Text('Fast Doorstep Delivery',
                style: splashScreenMainTextStyle),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Our Delivery executives will deliver your \n order under 24 hours',
              style: splashScreenSubTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 160),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    fixedSize: const Size(130, 40),
                    backgroundColor: buttonColor),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'LoginScreen', (route) => false);
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
