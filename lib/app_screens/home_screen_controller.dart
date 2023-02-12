import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/cart_screen.dart';
import 'package:grocery_ui/app_screens/home_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen.dart';
import 'package:grocery_ui/app_screens/wishlist_screen.dart';
import 'package:grocery_ui/constants.dart';

class HomeScreenController extends StatefulWidget {
  const HomeScreenController({super.key});

  @override
  State<HomeScreenController> createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<HomeScreenController> {
  int bottomIndex = 0;
  List pages = [const HomeScreen(), const CartScreen(), const WishListScreen(), const ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: scaffoldColor,
        elevation: 50,
        selectedItemColor: buttonColor,
        unselectedItemColor: hintTextColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomIndex,
        onTap: (value) {
          setState(() {
            bottomIndex = value;
          });
        },
      ),
      body: pages[bottomIndex],
    );
  }
}
