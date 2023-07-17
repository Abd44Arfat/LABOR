import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/home_Screen/widget/location_card.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/home_Screen/widget/services_card.dart';
import 'package:laborapplication/resources/constants.dart';

import '../../../../welcome_screens/widget/custom_dots.dart';
import '../../../widget/Grid_View_Item.dart';
import '../../../widget/Grid_View_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 28),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 34),
            Row(
              children: [
                Text(
                  "good morning Maged",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Quicksand",
                  ),
                ),
                Text(
                  " Maged",
                  style: TextStyle(
                    fontSize: 14,
                    color: kSecondaryColor,
                    fontFamily: "Quicksand",
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text("Find your home service Need a helping hand today?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                )),
            SizedBox(height: 12),
            locationCard(),
            SizedBox(height: 16),
            CustomCard(),
            Center(child: CustomDots(activecolor: KMainColor, dotIndex: null,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Our services",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                    )),
                Text("See ALL",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Quicksand",
                      color: Colors.green
                    )),

              ],
            ),
            // ItemCard(title: 'dsgvbedffb', svgSrc: 'assets/images/feature1.svg', press: () {  },)
            Container(

color: kThemeApp,
              height: 190,
              width: 350,
              child: CustomGridViewList(),
            ),

              ],

            ),
        ),
        );
  }
}

