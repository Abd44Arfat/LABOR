import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tabs/home_Screen/widget/services_card.dart';
import 'Grid_View_Item.dart';

class CustomGridViewList extends StatelessWidget {
   CustomGridViewList({Key? key}) : super(key: key);

  final List<ItemData> items = [
    ItemData(
      title: 'hourly cleaning',

      svgSrc: 'assets/images/feature2.svg',

    ),
    ItemData(
      title: 'contract cleaning',

      svgSrc: 'assets/images/feature1.svg',

    ),
    ItemData(
      title: 'electrical',

      svgSrc: 'assets/images/feature4.svg',

    ),
    ItemData(
      title: 'car wash ',

      svgSrc: 'assets/images/feature3.svg',

    ),
    ItemData(
      title: 'conditioning ',

      svgSrc: 'assets/images/feature5.svg',

    ),    ItemData(
      title: 'plumbing ',

      svgSrc: 'assets/images/feature6.svg',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ItemCard(
          title: items[index].title,



          press: () {}, svgSrc: items[index].svgSrc, top: 10, right: 10, left: 10,
        );
      },
    );
  }
}
class ItemData {
  final String title;

  final String svgSrc;


  ItemData({
    required this.title,

    required this.svgSrc,

  });
}