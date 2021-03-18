import 'package:flutter/material.dart';
import 'package:food_ording_app/screens/details/components/details_screen.dart';
import 'package:food_ording_app/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Burger & Bear",
            shopName: "MacDonld's",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                }),
              );
            },
          ),
          ItemCard(
            title: "Chinese & Noodles",
            shopName: "Wendys",
            svgSrc: "assets/icons/chinese_noodles.svg",
            press: () {},
          ),
          ItemCard(
            title: "Burger & Bear",
            shopName: "MacDonld's",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
