import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/cart_screen.dart';
import 'package:grocery_ui/app_screens/home_screen.dart';
import 'package:grocery_ui/app_screens/home_screen_controller.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/best_selling_products_screen.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/category_screen.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/notification_screen.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/popular_products_screen.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_last_screen.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_screen_five.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_screen_four.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_screen_one.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_screen_three.dart';
import 'package:grocery_ui/app_screens/mycartscreens/my_cart_screen_two.dart';
import 'package:grocery_ui/app_screens/profile_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/address_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/app_settings_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/deliver_to_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/my_order_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/profile_setting_screen.dart';
import 'package:grocery_ui/app_screens/profile_screen/track_order_screen.dart';
import 'package:grocery_ui/app_screens/wishlist_screen.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/login_screen.dart';
import 'package:grocery_ui/login_signup/sign_up_location.dart';
import 'package:grocery_ui/login_signup/sign_up_one_screen.dart';
import 'package:grocery_ui/login_signup/sign_up_otp.dart';
import 'package:grocery_ui/login_signup/sign_up_three_screen.dart';
import 'package:grocery_ui/login_signup/sign_up_two_screen.dart';
import 'package:grocery_ui/splash/splash_control.dart';
import 'package:grocery_ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: scaffoldColor),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        initialRoute: 'SplashScreen',
        routes: {
          'SplashScreen': ((context) => const SplashScreen()),
          'SplashScreenControl': ((context) => const SplashScreenControl()),
          'LoginScreen': ((context) => const LoginScreen()),
          'HomeScreenController': ((context) => const HomeScreenController()),
          'SignUpOne': ((context) => const SignUpOne()),
          'SignUpTwo': ((context) => const SignUpTwo()),
          'SignUpThree': ((context) => const SignUpThree()),
          'SignUpOTP': ((context) => const SignUpOTP()),
          'SignUpLocation': ((context) => const SigUpLocation()),
          'HomeScreen': ((context) => const HomeScreen()),
          'NotificationScreen': ((context) => const NotificationScreen()),
          'CategoryScreen': ((context) => const CategoryScreen()),
          'BestSellingProductScreen': ((context) => const BestSellingProductScreen()),
          'PopularProductScreen': ((context) => const PopularProductScreen()),
          'CartScreen': ((context) => const CartScreen()),
          'DeliverToScreen': ((context) => const DeliverToScreen()),
          'MyCartOne': ((context) => const MyCartScreenOne()),
          'MyCartTwo': ((context) => const MyCartScreenTwo()),
          'MyCartThree': ((context) => const MyCartScreenThree()),
          'MyCartFour': ((context) => const MyCartScreenFour()),
          'MyCartFive': ((context) => const MyCartScreenFive()),
          'MyCartLast': ((context) => const MyCartLastScreen()),
          'Wishlist': ((context) => const WishListScreen()),
          'ProfileScreen': ((context) => const ProfileScreen()),
          'ProfileScreenSettings': ((context) => const ProfileSettingsScreen()),
          'MyOrder': ((context) => const MyOrderScreen()),
          'TrackOrder': ((context) => const TrackOrderScreen()),
          'Address': ((context) => const AddressScreen()),
          'AppSettings': ((context) => const AppSettingScreen()),
        });
  }
}
