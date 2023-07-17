import 'package:flutter/cupertino.dart';
import 'package:laborapplication/presentation/screens/welcome_screens/widget/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key,required this.pageController});
final PageController ?pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          subtitle:
              'Find all your house needs in one place.  We provide every service to make your home experience smooth.',
          title: 'Easy Process',
          image: 'assets/images/onBoarding1.svg',
        ),
        PageViewItem(
          subtitle:
              'We have the best in class individuals working just for you. They are well  trained and capable of handling anything you need.',
          title: 'Expert People',
          image: 'assets/images/onBoarding2.svg',
        ),
        PageViewItem(
          subtitle:
              'We have all the household servicesyou need on a daily basis witheasy access',
          title: 'All In One Place',
          image: 'assets/images/onBoarding3.svg',
        )
      ],
    );
  }
}
