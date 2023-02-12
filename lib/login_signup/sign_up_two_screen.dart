import 'package:flutter/material.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';

import '../constants.dart';

class SignUpTwo extends StatelessWidget {
  const SignUpTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              TextFormFieldWidget(text: 'Email Id'),
              const SizedBox(height: 20),
              TextFormFieldWidget(text: 'Phone Number'),
              const SizedBox(height: 190),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size(340, 50)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'SignUpThree');
                  },
                  child: const Text(
                    'Next',
                    style: loginButtonTextStyle,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
