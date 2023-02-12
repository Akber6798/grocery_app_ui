import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class MyCartScreenFive extends StatelessWidget {
  const MyCartScreenFive({super.key});

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
                      color: buttonColor,
                      size: 30,
                    )),
                const SizedBox(width: 78),
                const Text(
                  'Payments',
                  style: screenHeadingTextStyle,
                )
              ],
            ),
            const Divider(
              thickness: 8,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Cash on Delivery',
                  style: splashScreenMainTextStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text('Sub Total'), const Text('₹ 30.00')],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Delivery'),
                const Text(
                  'Free',
                  style: viewAllTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Grand Total',
                    style: cartGrandTotalTextStyle),
                const Text(
                  '₹ 30.00',
                  style:cartGrandTotalTextStyle
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 340,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(335, 50)),
                onPressed: () {
                  Navigator.pushNamed(context, 'MyCartLast');
                },
                child: const Text(
                  'Confirm',
                  style: loginButtonTextStyle,
                )),
          ],
        ),
      ),
    );
  }
}
