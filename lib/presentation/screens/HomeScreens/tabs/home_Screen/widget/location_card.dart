import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class locationCard extends StatelessWidget {
  const locationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 380,
            height: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff4b8673))),
        Positioned(
          top: 14,
          left: 82,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'your location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 10,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w500,

                  ),
                ),


                SizedBox(height: 5,),
                Text(
                  'Jiddah Alexander Language School , ALS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ]),),

        Positioned(
          top: 8,
          left: 17,
          child: Stack(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    'assets/icons/location.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}