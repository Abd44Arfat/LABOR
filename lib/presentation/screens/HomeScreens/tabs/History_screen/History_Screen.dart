import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laborapplication/presentation/screens/HomeScreens/tabs/History_screen/widget/body_history.dart';

import '../../../../widgets/appBar.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(text: 'History',leadingiconp: 'assets/icons/Arrow_left.svg',actionicon: '',),

    body: BodyHistory(),
    );
  }
}
