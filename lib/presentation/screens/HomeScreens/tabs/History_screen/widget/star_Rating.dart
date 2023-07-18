import 'package:flutter/material.dart';

import 'Card_deatails.dart';

class Card_Details_Screen extends StatelessWidget {
  const Card_Details_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

children: [

  CardDetails(),
  CardDetails(),
  CardDetails()


],
      ),

    );
  }
}
