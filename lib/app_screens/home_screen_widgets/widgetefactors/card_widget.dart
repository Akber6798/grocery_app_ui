import 'package:flutter/material.dart';
import 'package:grocery_ui/constants.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.image, required this.mainText, required this.rate});

  String image;
  String mainText;
  String rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 228,
      width: 155,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(children: const [
                Image(image: AssetImage('assets/discount.png')),
                Text(
                  '-25%',
                  style: cardDiscountTextStyle,
                ),
              ]),
              Icon(
                Icons.favorite,
                color: Colors.grey[300],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Image(image: AssetImage(image)),
          const SizedBox(height: 8),
          Text(mainText, style: cardMainTextTextStyle),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                width: 18,
              ),
              Text('500g', style: cardGramTextStyle),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 18,
              ),
              Text(rate, style: cardPriceTextStyle),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const SizedBox(width: 18),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: .1, color: Colors.black)),
                child: const Center(
                    child: Text(
                  '-',
                  style: cardSmallContainerTextStyle,
                )),
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    border: Border.all(width: .1, color: Colors.black)),
                child: const Center(
                    child: Text(
                  '1',
                  style: cardSmallContainerTextStyle,
                )),
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: .1, color: Colors.black)),
                child: const Center(
                    child: Text(
                  '+',
                  style: cardSmallContainerTextStyle,
                )),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.shopping_bag, color: buttonColor)
            ],
          )
        ],
      ),
    );
  }
}
