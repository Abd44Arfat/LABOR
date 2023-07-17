import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../resources/constants.dart';
import '../tabs/History_screen/History_Screen.dart';
import '../tabs/History_screen/tabviewbody.dart';
import '../tabs/home_Screen/Home.dart';
import '../tabs/Categories_Screen/categories.dart';
import '../tabs/Profile_screen/profile.dart';




class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  onTabChange(int index) {
    currentIndex = index;
    tabController!.index = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          HistoryScreen(),
          categoriesScreen(),
          ProfileScreen(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
  Icons.home_outlined
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: ''),



          BottomNavigationBarItem(icon: Icon(Icons.grid_view_outlined), label: ''),


          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded,), label: ''),


        ],
        elevation: 0,
        selectedItemColor:KMainColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTabChange,
        currentIndex: currentIndex,
        selectedLabelStyle:
        TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle:
        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      ),
    );
  }
}
