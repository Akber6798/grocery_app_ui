import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/banner_widget.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/card_widget.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/categorycard.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/search_bar.dart';
import 'package:grocery_ui/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                    height: 91,
                    width: 200,
                    image: AssetImage('assets/two.png')),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'NotificationScreen');
                    },
                    icon: const Icon(
                      Icons.notifications,
                      color: buttonColor,
                    ))
              ],
            ),
            const SizedBox(height: 10),
            SearchBar(
              wid: 335,
            ),
            const SizedBox(height: 10),
            const BannerWidget(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  Category',
                  style: categoryTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'CategoryScreen');
                    },
                    child: const Text(
                      'View all',
                      style: viewAllTextStyle,
                    ))
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategeroryCard(
                    text: 'Vegetables', image: 'assets/vegitables.png'),
                CategeroryCard(text: 'Fruits', image: 'assets/fruits.png'),
                CategeroryCard(text: 'Dry Fruits', image: 'assets/nuts.png'),
                CategeroryCard(text: 'Meat', image: 'assets/meat.png'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('  Offers', style: categoryTextStyle),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 335,
              height: 159,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const Image(image: AssetImage('assets/offer.png')),
                  const SizedBox(width: 10),
                  const Image(image: AssetImage('assets/offer.png')),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  Best Selling Products',
                  style: categoryTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'BestSellingProductScreen');
                    },
                    child: const Text(
                      'View all',
                      style: viewAllTextStyle,
                    ))
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
                    image: 'assets/orange.png',
                    mainText: 'Fresh Organic Orange',
                    rate: '₹ 50')
              ],
            ),
            const SizedBox(height: 20),
            const BannerWidget(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '  Popular Products',
                  style: categoryTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'PopularProductScreen');
                    },
                    child: const Text(
                      'View all',
                      style: viewAllTextStyle,
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                    image: 'assets/cashew.png',
                    mainText: 'Fresh Cashew',
                    rate: '₹ 400'),
                CardWidget(
                    image: 'assets/tea.png',
                    mainText: 'Ripple Tea',
                    rate: '₹ 120'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                    image: 'assets/watermelon.png',
                    mainText: 'Organic WaterMelon',
                    rate: '₹ 20'),
                CardWidget(
                    image: 'assets/fish.png',
                    mainText: 'Fresh Fish',
                    rate: '₹ 100')
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ));
  }
}
