import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';


class SignUpThree extends StatelessWidget {
  const SignUpThree({super.key});

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
              TextFormFieldWidget(text: 'Address Line 1'),
              const SizedBox(height: 15),
              TextFormFieldWidget(text: 'Address Line 2'),
              const SizedBox(height: 15),
              TextFormFieldWidget(
                  text: 'City', rightIcon: const Icon(Icons.arrow_drop_down,color: buttonColor,)),
                  const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                      child: TextFormFieldWidget(
                    text: 'State',
                    rightIcon: const Icon(Icons.arrow_drop_down,color: buttonColor),
                  )),
                  const SizedBox(width: 10,),
                  Expanded(
                      child: TextFormFieldWidget(
                    text: 'PinCode',
                  )),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size(340, 50)),
                  onPressed: () {
                   Navigator.pushNamed(context, 'SignUpOTP');
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
