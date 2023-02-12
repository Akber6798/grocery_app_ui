import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                    const SizedBox(width: 68),
                const Text(
                  'Notifications',
                  style: screenHeadingTextStyle
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 170,
            ),
            const Image(image: AssetImage('assets/notification.png')),
            const SizedBox(height: 35),
            const Text(
              'No Notification',
              style: splashScreenMainTextStyle,
            ),
            const SizedBox(height: 10),
            const Text(
              "IIt seems like you haven't \n received any notifications yet",
              style: splashScreenSubTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
