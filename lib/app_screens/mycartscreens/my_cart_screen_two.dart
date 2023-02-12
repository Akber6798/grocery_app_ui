import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

enum Time { sevenToThirteen, thirteenToTwentyTwo }

Time? currentTime = Time.sevenToThirteen;

class MyCartScreenTwo extends StatefulWidget {
  const MyCartScreenTwo({super.key});

  @override
  State<MyCartScreenTwo> createState() => _MyCartScreenTwoState();
}

class _MyCartScreenTwoState extends State<MyCartScreenTwo> {
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
                const SizedBox(width: 75),
                const Text(
                  'Select Slot',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Sun', style: daySlotTextStyle),
                const Text('Mon', style: daySlotTextStyle),
                const Text('Tue', style: daySlotTextStyle),
                const Text('Wed', style: daySlotTextStyle),
                const Text('Thu', style: daySlotTextStyle),
                const Text('Fri', style: daySlotTextStyle),
                const Text('Sat', style: daySlotTextStyle),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemCount: 30,
                  itemBuilder: ((context, index) {
                    if (index == 0) {
                      return const Text("");
                    }
                    return Text(index.toString(),
                        style: cartDateTextStyle);
                  })),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Today, ',
                  style: viewAllTextStyle,
                ),
                const Text(
                  'Friday December 2021',
                  style: cartSelectDateTextStyle
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 4,
            ),
            const SizedBox(
              height: 30,
            ),
            RadioListTile(
                title: const Text('07:00 - 13:00'),
                activeColor: buttonColor,
                value: Time.sevenToThirteen,
                groupValue: currentTime,
                onChanged: (value) {
                  setState(() {
                    currentTime = value;
                  });
                }),
            RadioListTile(
                title: const Text('13:00 - 22:00'),
                activeColor: buttonColor,
                value: Time.thirteenToTwentyTwo,
                groupValue: currentTime,
                onChanged: (value) {
                  setState(() {
                    currentTime = value;
                  });
                }),
            const SizedBox(
              height: 250,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(335, 50)),
                onPressed: () {
                 Navigator.pushNamed(context, 'MyCartThree');
                },
                child: const Text(
                  'Continue',
                  style: loginButtonTextStyle,
                )),
          ],
        ),
      ),
    );
  }
}
