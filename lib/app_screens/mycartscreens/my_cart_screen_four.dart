import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

enum Payment {
  cashOnDeliver,
  debitCreditCard,
  netBanking,
  upi
}

class MyCartScreenFour extends StatefulWidget {
  const MyCartScreenFour({super.key});

  @override
  State<MyCartScreenFour> createState() => _MyCartScreenFourState();
}

class _MyCartScreenFourState extends State<MyCartScreenFour> {
  Payment? paymentMethod = Payment.cashOnDeliver;
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
            RadioListTile(
                title: const Text('Cash on Delivery'),
                activeColor: buttonColor,
                value: Payment.cashOnDeliver,
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                }),
                const Divider(thickness: 2,),
                 RadioListTile(
                title: const Text('Debit/Credit Card'),
                activeColor: buttonColor,
                value: Payment.debitCreditCard,
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                }),
                const Divider(thickness: 2,),
                 RadioListTile(
                title: const Text('Net Banking'),
                activeColor: buttonColor,
                value: Payment.netBanking,
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                }),
                const Divider(thickness: 2,), RadioListTile(
                title: const Text('UPI'),
                activeColor: buttonColor,
                value: Payment.upi,
                groupValue: paymentMethod,
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                }),
                const Divider(thickness: 2,),
                const SizedBox(height: 260),
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      '₹ 30.00',
                      style: splashScreenMainTextStyle,
                    ),
                    const Text(
                      'Total Amount',
                      style: greyCartTextStyle
                    )
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
                     Navigator.pushNamed(context, 'MyCartFive');
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