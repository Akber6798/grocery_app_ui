import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';
import 'package:grocery_ui/login_signup/refactor/textformfields.dart';

enum Loctaion {
  currentLocation,
  newLocation
}

Loctaion? address = Loctaion.currentLocation;

class DeliverToScreen extends StatefulWidget {
  const DeliverToScreen({super.key});

  @override
  State<DeliverToScreen> createState() => _DeliverToScreenState();
}

class _DeliverToScreenState extends State<DeliverToScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: buttonColor,
                    size: 30,
                  )),
              const SizedBox(width: 88),
              const Text(
                'Deliver To',
                style: categoryTextStyle,
              )
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 20,
          ),
         RadioListTile(
                title: const Text('Current Location'),
                activeColor: buttonColor,
                value: Loctaion.currentLocation,
                groupValue: address,
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                }),
                 RadioListTile(
                title: const Text('New Location'),
                activeColor: buttonColor,
                value: Loctaion.newLocation,
                groupValue: address,
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                }),
                const SizedBox(height: 40,),
                TextFormFieldWidget(text: 'Address Line 1'),
          const SizedBox(height: 15),
          TextFormFieldWidget(text: 'Address Line 2'),
          const SizedBox(height: 15),
          TextFormFieldWidget(
              text: 'City',
              rightIcon: const Icon(
                Icons.arrow_drop_down,
                color: buttonColor,
              )),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                  child: TextFormFieldWidget(
                text: 'State',
                rightIcon: const Icon(Icons.arrow_drop_down, color: buttonColor),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextFormFieldWidget(
                text: 'PinCode',
              )),
        ],
      ),
      const SizedBox(height: 90,),
       ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(335, 50)),
                onPressed: () {
                 Navigator.pop(context);
                },
                child: const Text(
                  'Continue',
                  style: loginButtonTextStyle,
                )),
        ]
      ),
      )
    );
  }
}