import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:laborapplication/presentation/widgets/Custom_Button.dart';
import 'package:laborapplication/presentation/screens/welcome_screens/widget/Custom_page_view.dart';
import 'package:laborapplication/presentation/screens/welcome_screens/widget/custom_dots.dart';
import 'package:laborapplication/resources/size_config.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  PageController?pageController;
  @override
  void initState() {
    pageController=PageController(

      initialPage: 0
    )..addListener(() {setState(() {

    });});
        super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
         CustomPageView(pageController: pageController),
        Positioned(
          right: 10,
          left: 10,
          bottom: 110,
          child: CustomDots(
            activecolor: kSecondaryColor,
            dotIndex:pageController!.hasClients?pageController?.page:0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients? (pageController?. page==2 ? false:true):true,
          child: Positioned(
            top: 75,
            right: 32,
            child: Text("Skip",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Quicksand",
                  color: kSecondaryColor,
                )),
          ),
        ),
        Positioned(
          right: 10,
          left: 10,
          bottom: 30,
          child: CustomButton(
            size: 389,
            text: pageController!.hasClients?( pageController?.page==2 ? 'Enter':'Next'):'Next',
            color: KMainColor,
            press: () {


              GoRouter.of(context).go(AppRouter.KMainScreen) ;

            },
            height: 60, fontesiz: 18, bordercolor: KMainColor, textColor: Colors.white,
          ),
        )
      ],
    ));
  }
}
