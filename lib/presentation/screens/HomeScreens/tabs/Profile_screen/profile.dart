import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/Profile_screen/widget/Profile_Body.dart';

import '../../../../../resources/constants.dart';
import '../../../../widgets/appBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: kThemeApp,
      appBar: CustomAppBar(text: 'History',leadingiconp: 'assets/icons/Arrow_left.svg',actionicon: '',),
      body: ProfileBody(),
    );
  }
}
