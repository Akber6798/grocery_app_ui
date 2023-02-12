import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

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
                'WishList',
                style: screenHeadingTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
                thickness: 2,
              ),
              const SizedBox(height: 160,),
              const Image(image: AssetImage('assets/emptycart.png')),
              const SizedBox(height: 35),
          const Text(
            'Your Wishlist is Empty',
            style: splashScreenMainTextStyle,
          ),
          const SizedBox(height: 10),
          const Text(
            "Its seems like you haven't added any\n items to your wishlist.",
            style: splashScreenSubTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}
