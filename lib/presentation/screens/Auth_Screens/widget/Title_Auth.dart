import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  const TitleAuth({super.key, required this.title, required this.subtitle});
final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF1B1D21),
        fontSize: 28,
        fontFamily: 'Quicksand',
        fontWeight: FontWeight.w700,

      ),

    ),

    SizedBox(height: 14,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        subtitle,
      textAlign: TextAlign.center,
      style: TextStyle(
      color: Color(0xFFB4B4B4),
      fontSize: 14,
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.w500,
      height: 2,
      ),
      ),
    ),
    ]);
  }
}
