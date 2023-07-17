
import 'package:flutter/material.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/Categories_Screen/widget/Categories_Body.dart';

import '../../../../widgets/appBar.dart';

class categoriesScreen extends StatelessWidget {
  const categoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      appBar: CustomAppBar(text: 'Categories',leadingiconp: 'assets/icons/Arrow_left.svg',actionicon: '',),


      body: BodyCategories(),
    );
  }
}
