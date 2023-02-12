import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
              const Text(
                'Cart',
                style: screenHeadingTextStyle,
              )
            ],
          ),
          const SizedBox(
            height: 2,
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
          const SizedBox(height: 125),
          const Image(image: AssetImage('assets/emptycart.png')),
          const SizedBox(height: 20),
          const Text(
            'Your Cart is Empty',
            style: splashScreenMainTextStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            'Add item to the cart to view \n it here.',
            style: splashScreenSubTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 80),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fixedSize: const Size(335, 50)),
              onPressed: () {
               Navigator.pushNamed(context, 'MyCartOne');
              },
              child: const Text(
                'Start Shopping',
                style: loginButtonTextStyle,
              )),
        ],
      ),
    ));
  }
}
