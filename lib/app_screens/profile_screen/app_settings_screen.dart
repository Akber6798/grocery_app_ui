import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class AppSettingScreen extends StatefulWidget {
  const AppSettingScreen({super.key});

  @override
  State<AppSettingScreen> createState() => _AppSettingScreenState();
}

class _AppSettingScreenState extends State<AppSettingScreen> {
  bool one = false;
  bool two = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                    const SizedBox(width: 78),
                const Text(
                  'Settings',
                  style: screenHeadingTextStyle,
                ),
              ],
            ),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Notification',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Switch(
                    activeColor: buttonColor,
                    value: one,
                    onChanged: (value) {
                      setState(() {
                        one = value;
                      });
                    })
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Switch(
                    activeColor: buttonColor,
                    value: two,
                    onChanged: (value) {
                      setState(() {
                        two = value;
                      });
                    })
              ],
            ),
             const SizedBox(height: 15),
             Row(
              children: [
                const Text('Language',style: settingsTextStyle)
              ],
             ),
              const SizedBox(height: 30),
             Row(
              children: [
                const Text('About Us',style:settingsTextStyle)
              ],
             ),
              const SizedBox(height: 30),
             Row(
              children: [
                const Text('Terms and Conditions',style: settingsTextStyle)
              ],
             )

          ],
        ),
      ),
    );
  }
}
