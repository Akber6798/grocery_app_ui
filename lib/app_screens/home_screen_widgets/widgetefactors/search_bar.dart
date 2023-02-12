import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';


class SearchBar extends StatelessWidget {
   SearchBar({required this.wid});

  double wid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wid,
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: buttonColor,
            ),
            hintText: 'Search your needs here....',
            hintStyle: searchBarHintTextTextStyle,
            filled: true,
            fillColor: searchBarColor,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
