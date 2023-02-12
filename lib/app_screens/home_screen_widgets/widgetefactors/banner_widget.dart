import 'package:flutter/material.dart';


class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              width: 335,
              height: 125,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  const Image(image: AssetImage('assets/bannerone.png')),
                  const SizedBox(width: 10),
                  const Image(image: AssetImage('assets/bannertwo.png')),
                ],
              ),
            );
  }
}