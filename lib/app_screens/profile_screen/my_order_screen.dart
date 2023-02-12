import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/profile_screen/refactor/order_container.dart';
import 'package:grocery_ui/constants.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
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
                  'My Order',
                  style: screenHeadingTextStyle,
                ),
              ],
            ),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(height: 10),
            OrderContainer(date: 'Fri, 2 Dec 2022', price: '₹ 30.00', order: 'Order 110523',details: 'Details ▶'),
             const Divider(
              thickness: 4,
            ),
            OrderContainer(date: 'Sat, 11 Dec 2022', price: '₹ 200.00', order: 'Order 110524',details: 'Details ▶'),
             const Divider(
              thickness: 4,
            ),
            OrderContainer(date: 'Mon, 17 Dec 2022', price: '₹ 520.50', order: 'Order 110525',details: 'Details ▶'),
            const Divider(
              thickness: 4,
            ),
          ],
        ),
      ),
    );
  }
}
