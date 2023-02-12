import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/profile_screen/refactor/order_container.dart';
import 'package:grocery_ui/constants.dart';
import '../../login_signup/refactor/textformfields.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(children: [
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
              const SizedBox(width: 78),
              const Text(
                'Address',
                style: screenHeadingTextStyle,
              )
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
             Navigator.pushNamed(context, 'DeliverToScreen');
            },
            child: OrderContainer(
                date: 'Current Location',
                price: '',
                order: 'Delivering to: Maradu, 682304',
                details: ''),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Address',
                style: addressTextStyle,
              ),
              
            ],
          ),
           const SizedBox(
            height: 20,
          ),
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
        ]),
      ),
    ));
  }
}
