import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: buttonColor,
                      )),
                      const SizedBox(width: 60),
                  const Text(
                    'Profile Settings',
                    style: screenHeadingTextStyle,
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 20),
              TextFormFieldWidget(text: 'First Name'),
              const SizedBox(height: 10),
              TextFormFieldWidget(text: 'Second Name'),
              const SizedBox(height: 10),
              const Divider(thickness: 5),
              const SizedBox(height: 10),
              TextFormFieldWidget(text: 'Email Id'),
              const SizedBox(height: 10),
              TextFormFieldWidget(text: 'Phone Number'),
               const SizedBox(height: 10),
              const Divider(thickness: 5),
              const SizedBox(height: 10),
              TextFormFieldWidget(text: 'Username'),
              const SizedBox(height: 10),
              TextFormFieldWidget(text: 'Password'),
               const SizedBox(height: 10),
              const Divider(thickness: 5),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
