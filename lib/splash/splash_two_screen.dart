import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';


class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

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
                      image: AssetImage('assets/splashacreentwo.png'))),
            ),
            const SizedBox(height: 40),
            const Text('Real Time Reporting', style: splashScreenMainTextStyle),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Keeping track of real-time delivery \n location',
              style: splashScreenSubTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
