import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/refactor/otp_container.dart';

class SignUpOTP extends StatelessWidget {
  const SignUpOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/combination.png'),
              width: 280,
              height: 300,
            ),
            const Text(
              'Verification',
              style: splashScreenMainTextStyle,
            ),
            const SizedBox(height: 20),
            const Text('Enter OTP code sent to your number',style: splashScreenSubTextStyle,),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const OTPContainer(),
                const OTPContainer(),
                const OTPContainer(),
                const OTPContainer(),
                
              ],
            ),
            const SizedBox(height: 150),
            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size(340, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'SignUpLocation');
                  },
                  child: const Text(
                    'Submit',
                    style: loginButtonTextStyle,
                  )),
          ],
        ),
      ),
    );
  }
}
