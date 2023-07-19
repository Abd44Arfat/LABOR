import 'package:flutter/material.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/History_screen/widget/Card_deatails.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/History_screen/widget/star_Rating.dart';
import 'package:laborapplication/resources/constants.dart';
import '../../../Auth_Screens/login.dart';

class TapCategories extends StatefulWidget {
  const TapCategories({Key? key}) : super(key: key);

  @override
  State<TapCategories> createState() => _TapCategoriesState();
}

class _TapCategoriesState extends State<TapCategories> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  // labelPadding: EdgeInsets.only(left: 20,right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.green,
                  indicator: BoxDecoration(color: KMainColor,
                    borderRadius: BorderRadius.circular(10),),
                  indicatorPadding: EdgeInsets.only(top: 40,right: 20,left: 20),
                  tabs: [
                    Tab(text: 'Ongoing'),
                    Tab(text: 'Past'),
                    Tab(text: 'Underway'),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height:double.maxFinite ,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Card_Details_Screen(),
                  Card_Details_Screen(),
                  Card_Details_Screen()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}