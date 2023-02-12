import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: 250,
              width: 335,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'ProfileScreenSettings');
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: buttonColor,
                          )),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/profilepic.png'),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'William Jhon',
                    style: profileNameTextStyle,
                  ),
                  const SizedBox(height: 5),
                  const Text('+91 8564782625', style: profilePhoneNumberTextStyle),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(
                  Icons.update,
                  color: buttonColor,
                  size: 28,
                ),
                const SizedBox(width: 11),
                const Text('My Orders', style: profileUnderTextTextStyle),
                const SizedBox(width: 160),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'MyOrder');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.local_shipping,
                  color: buttonColor,
                  size: 28,
                ),
                const SizedBox(width: 11),
                const Text('Track Order', style: profileUnderTextTextStyle),
                const SizedBox(width: 150),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'TrackOrder');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: buttonColor,
                  size: 28,
                ),
                const SizedBox(width: 11),
                const Text('Address', style: profileUnderTextTextStyle),
                const SizedBox(width: 175),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Address');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone_in_talk,
                  color: buttonColor,
                  size: 28,
                ),
                const SizedBox(width: 11),
                const Text('Contact Us', style: profileUnderTextTextStyle),
                const SizedBox(width: 150),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: buttonColor,
                  size: 28,
                ),
                const SizedBox(width: 11),
                const Text('Settings', style: profileUnderTextTextStyle),
                const SizedBox(width: 170),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'AppSettings');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Icon(
                  Icons.logout,
                  color: buttonColor,
                  size: 30,
                ),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: buttonColor),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'LoginScreen', (route) => false);
                    },
                    child: const Text(
                      'LogOut',
                      style: profileUnderTextTextStyle,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
