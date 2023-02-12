import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class MyCartScreenThree extends StatelessWidget {
  const MyCartScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 10),
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
                  'Vegetables',
                  style: screenHeadingTextStyle,
                )
              ],
            ),
            const Divider(
              thickness: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 59,
                  height: 43,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/tomato.png'))),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Fresh Organic Tomato',
                  style: trackLastContainerTextStyle,
                ),
                const SizedBox(
                  width: 80,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey[200],
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  '₹ 30',
                  style: trackLastContainerTextStyle,
                ),
                const SizedBox(
                  width: 140,
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: .1, color: Colors.black)),
                  child: const Center(
                      child: Text(
                    '-',
                    style: cardSmallContainerTextStyle,
                  )),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      border: Border.all(width: .1, color: Colors.black)),
                  child: const Center(
                      child: Text(
                    '1',
                    style: cardSmallContainerTextStyle,
                  )),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: .1, color: Colors.black)),
                  child: const Center(
                      child: Text(
                    '+',
                    style: cardSmallContainerTextStyle,
                  )),
                ),
              ],
            ),
            const SizedBox(height: 470),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      '₹ 30.00',
                      style: splashScreenMainTextStyle,
                    ),
                    const Text('Item Vegetable', style: greyCartTextStyle)
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
                      Navigator.pushNamed(context, 'MyCartFour');
                    },
                    child: const Text(
                      'Continue',
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
