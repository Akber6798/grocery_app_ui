import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class OrderContainer extends StatelessWidget {
  OrderContainer(
      {required this.date,
      required this.price,
      required this.order,
      required this.details});

  String date;
  String price;
  String order;
  String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.grey[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date, style: myOrderContainerDateTextStyle),
              Text(price, style: myOrderContainerPriceTextStyle)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(order, style: myOrderContainerOrderDataTextStyle),
              Text(details, style: myOrderContainerDetailsTextStyle)
            ],
          )
        ],
      ),
    );
  }
}
