import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class SigUpLocation extends StatelessWidget {
  const SigUpLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          const Image(
            image: AssetImage('assets/combination.png'),
            width: 280,
            height: 300,
          ),
          const SizedBox(height: 40),
          const Text(
            'Enable Location',
            style: splashScreenMainTextStyle,
          ),
          const SizedBox(height: 20),
          const Text(
            'We will need your location to give you \n better experience',
            style: splashScreenSubTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 160),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                fixedSize: const Size(340, 50)),
            onPressed: () {},
            child: const Text(
              'Enable Location',
              style: loginButtonTextStyle,
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'HomeScreenController', (route) => false);
              },
              child: const Text(
                'Not now',
                style: cartBackToHomeButtonTextStyle,
              ))
        ]),
      ),
    );
  }
}
