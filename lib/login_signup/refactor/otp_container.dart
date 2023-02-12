import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class OTPContainer extends StatelessWidget {
  const OTPContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                      color: hintTextColor,
                      borderRadius: BorderRadius.circular(10)),
                );
  }
}