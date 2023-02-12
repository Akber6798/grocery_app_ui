import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child:const Image(
            height: 200,
            width: 150,
            image: AssetImage('assets/combination.png'))
        ),
      ),
    );
  }

  Future<void> delay() async {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, 'SplashScreenControl');
    });
  }
}
