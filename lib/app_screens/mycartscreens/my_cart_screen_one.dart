import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class MyCartScreenOne extends StatelessWidget {
  const MyCartScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 5),
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
                const SizedBox(width: 95),
                const Text(
                  'Cart',
                  style: screenHeadingTextStyle,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Delevering to : Maradu, 682304',
                  style: splashScreenSubTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'DeliverToScreen');
                    },
                    child: const Text(
                      'Change',
                      style: viewAllTextStyle,
                    ))
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text('Vegetables', style: splashScreenSubTextStyle),
                const SizedBox(width: 5),
                const Text('(1 item)', style: greyCartTextStyle),
                const SizedBox(width: 165),
                const Text('₹ 30.00', style: cartSubTextStyle)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('1 Dec 2022 16:00 - 22:00', style: cartSubTextStyle),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'MyCartTwo');
                    },
                    child: const Text(
                      'Change',
                      style: viewAllTextStyle,
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 46,
                  width: 52,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/tomato.png'))),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'CategoryScreen');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Sub Total', style: cartSubTextStyle),
                const Text('₹ 30.00', style: cartSubTextStyle)
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Delivery', style: cartSubTextStyle),
                const Text('Free', style: viewAllTextStyle)
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Grand Total', style: cartGrandTotalTextStyle),
                const Text('₹ 30.00', style: cartSubTextStyle)
              ],
            ),
            Row(
              children: [
                const Text('Inclusive of All Taxes', style: cartGreySmallTextStyle),
              ],
            ),
            const SizedBox(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      '₹ 30.00',
                      style: splashScreenMainTextStyle,
                    ),
                    const SizedBox(width: 5),
                    const Text('Total Amount', style: greyCartTextStyle)
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        fixedSize: const Size(113, 45)),
                    onPressed: () {
                      Navigator.pushNamed(context, 'MyCartTwo');
                    },
                    child: const Text(
                      'Proceed',
                      style: loginButtonTextStyle,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
