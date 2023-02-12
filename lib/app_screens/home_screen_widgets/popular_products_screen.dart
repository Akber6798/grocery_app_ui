import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/card_widget.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/search_bar.dart';
import 'package:grocery_ui/constants.dart';

class PopularProductScreen extends StatelessWidget {
  const PopularProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
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
                  SearchBar(
                    wid: 270,
                  )
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  const Text(
                    ' Popular Products',
                    style: screenHeadingTextStyle,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                      image: 'assets/cashew.png',
                      mainText: 'Fresh Cashew',
                      rate: '₹ 400'),
                  CardWidget(
                      image: 'assets/cabbage.png',
                      mainText: 'Fresh Organic Gabbage',
                      rate: '₹ 50'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                      image: 'assets/watermelon.png',
                      mainText: 'Organic Watermelon',
                      rate: '₹ 20'),
                  CardWidget(
                      image: 'assets/redbull.png',
                      mainText: 'Red Bull',
                      rate: '₹ 120'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                      image: 'assets/honey.png',
                      mainText: 'Fresh Honey',
                      rate: '₹ 100'),
                  CardWidget(
                      image: 'assets/mainmeat.png',
                      mainText: 'Fresh Meat',
                      rate: '₹ 100'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                      image: 'assets/tomato.png',
                      mainText: 'Fresh Organic Tomato',
                      rate: '₹ 35'),
                  CardWidget(
                      image: 'assets/perfume.png',
                      mainText: 'Villain Hydra',
                      rate: '₹ 550'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardWidget(
                      image: 'assets/greenapple.png',
                      mainText: 'Organic Green Apple',
                      rate: '₹ 150'),
                  CardWidget(
                      image: 'assets/orange.png',
                      mainText: 'Fresh Organic Orange',
                      rate: '₹ 50'),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
