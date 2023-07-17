import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/home_Screen/widget/body.dart';

import '../../../../../resources/constants.dart';
import '../../../../widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeApp,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(right: 58),
            child: Container(
              width: 100,
              // Set the width of the container to adjust the size of the SVG image
              child: SvgPicture.asset(
                'assets/icons/logotext.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/Bell_pin.svg'),
          onPressed: () {},
        ),
      ),
      body:HomeBody() ,
    );
  }
}
