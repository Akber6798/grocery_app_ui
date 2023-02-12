import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({required this.text, this.leftIcon, this.rightIcon});

  String text;
  Icon? leftIcon;
  Icon? rightIcon;
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: buttonColor),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: buttonColor),
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: leftIcon,
          suffixIcon: rightIcon,
          hintText: text,
          hintStyle: const TextStyle(color: hintTextColor)),
    );
  }
}
