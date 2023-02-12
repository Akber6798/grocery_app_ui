import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              TextFormFieldWidget(
                  text: 'Username', leftIcon: const Icon(Icons.person)),
              const SizedBox(height: 20),
              TextFormFieldWidget(
                text: 'Password',
                leftIcon: const Icon(Icons.lock),
                rightIcon: const Icon(Icons.visibility_off),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [const Text('Forgot Password')],
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fixedSize: const Size(335, 50)),
                  onPressed: () {
                   Navigator.pushNamed(context, 'HomeScreenController');
                  },
                  child: const Text(
                    'Login',
                    style: loginButtonTextStyle,
                  )),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'SignUpOne');
                      },
                      child: const Text(
                        'Sign UP',
                        style: TextStyle(color: buttonColor),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              const Text('or'),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: hintTextColor,
                    backgroundImage: AssetImage('assets/google.png'),
                  ),
                  const SizedBox(width: 25),
                  const CircleAvatar(
                    backgroundColor: hintTextColor,
                    child: Icon(Icons.facebook_rounded),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
