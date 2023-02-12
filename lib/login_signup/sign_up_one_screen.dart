import 'package:flutter/material.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';
import 'package:grocery_ui/login_signup/sign_up_two_screen.dart';

import '../constants.dart';

class SignUpOne extends StatelessWidget {
  const SignUpOne({super.key});

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
              TextFormFieldWidget(text: 'Enter Username'),
              const SizedBox(height: 20),
              TextFormFieldWidget(text: 'Enter Password', rightIcon: const Icon(Icons.visibility_off),),
              const SizedBox(height: 20),
              TextFormFieldWidget(text: 'Confirm Password', rightIcon: const Icon(Icons.visibility_off),),
              const SizedBox(height: 110),
               ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fixedSize: const Size(340, 50)),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) {
                        return const SignUpTwo();
                      })));
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
