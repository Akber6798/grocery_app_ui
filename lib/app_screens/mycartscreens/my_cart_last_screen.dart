import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class MyCartLastScreen extends StatelessWidget {
  const MyCartLastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Image(
                height: 400, width: 400, image: AssetImage('assets/tick.png')),
            const Text(
              'Thank You',
              style: splashScreenMainTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your Order is Confirmed',
              style: splashScreenSubTextStyle,
            ),
            const SizedBox(
              height: 150,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'HomeScreenController', (route) => false);
                },
                child:
                    const Text('Back to Home', style: cartBackToHomeButtonTextStyle))
          ],
        ),
      ),
    );
  }
}
