import 'package:flutter/material.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/categorycard.dart';
import 'package:grocery_ui/app_screens/home_screen_widgets/widgetefactors/search_bar.dart';
import 'package:grocery_ui/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List cardItems = [
      {'title': 'Vegitables', 'image': 'assets/vegitables.png'},
      {'title': 'Fruits', 'image': 'assets/fruits.png'},
      {'title': 'Dry Fruits', 'image': 'assets/nuts.png'},
      {'title': 'Meat', 'image': 'assets/meat.png'},
      {'title': 'Tea/Coffee', 'image': 'assets/teasmall.png'},
      {'title': 'Oil & Ghee', 'image': 'assets/oilsmall.png'},
      {'title': 'Dairy Products', 'image': 'assets/milk.png'},
      {'title': 'Spices', 'image': 'assets/spicessmall.png'},
      {'title': 'Rice', 'image': 'assets/rice.png'},
      {'title': 'Beverages', 'image': 'assets/beveragessmall.png'},
      {'title': 'Biscuts', 'image': 'assets/biscutssmall.png'},
      {'title': 'Deodarants', 'image': 'assets/perfumessmall.png'},
    ];

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: buttonColor,
                  )),
              SearchBar(
                wid: 270,
              )
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              const Text(
                'Category',
                style: screenHeadingTextStyle,
              )
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
              child: GridView.builder(
                  itemCount: cardItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8),
                  itemBuilder: (((context, index) {
                    return CategeroryCard(
                        text: '${cardItems[index]['title']}',
                        image: '${cardItems[index]['image']}');
                  }))))
        ],
      ),
    ));
  }
}
