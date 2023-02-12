import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/profile_screen/refactor/order_container.dart';
import 'package:grocery_ui/app_screens/profile_screen/refactor/time_line_widget.dart';
import 'package:grocery_ui/constants.dart';


class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
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
                const SizedBox(width: 78),
                const Text(
                  'Track Order',
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
            OrderContainer(
              date: 'Fri, 2 Dec 2022',
              price: '₹ 30.00',
              order: 'Order 110523',
              details: '',
            ),
            const SizedBox(
              height: 20,
            ),
            const TimeLineWidget(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
              child: Text(
                'Product List',
                style: productListTextStyle
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 59,
                  height: 43,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/tomato.png'))),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Fresh Organic Tomato',
                          style: trackLastContainerTextStyle
                        ),
                        const SizedBox(width: 50),
                        const Text(
                          '₹ 30.00',
                          style: trackLastContainerTextStyle
                        ),
                      ],
                    ),
                    const Text(
                      '500g',
                      style: trackLastContainerTextStyle
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
