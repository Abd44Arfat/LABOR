import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/constants.dart';


class ItemCard extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback press;
  final double top,right,left;
  const ItemCard({
    Key? key,
    required this.title,

    required this.svgSrc,
    required this.press,  required this.top,  required this.right,  required this.left,


  }) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen

    return Stack(
      children: [
        Container(
margin: EdgeInsets.only(top: top,right: right,left: left),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(0.32),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: KFeaturesColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(title,style: TextStyle(fontSize:11,fontFamily: 'Quicksand',fontWeight: FontWeight.w700)),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 25,
          child: Container(
            height: 60,
            width: 89,
            child: SvgPicture.asset(
              svgSrc,
              // size.width * 0.18 means it uses 18% of total width
            ),
          ),
        ),
      ],
    );
  }}