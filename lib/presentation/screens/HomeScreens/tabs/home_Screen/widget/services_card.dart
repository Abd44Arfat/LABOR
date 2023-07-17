import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: 517.99,
            height: 140,
            decoration: ShapeDecoration(
              color: Color(0xFF5FD068),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),

          Positioned(
            bottom: -120,
            right: -55,
            child:
            Container(
              height: 400,
              width: 300,
              child: SvgPicture.asset(
                'assets/images/Vector.svg',
              ),
            ),
          ),
          Positioned(
            bottom: -55,
            right: -50,
            child: Container(
              height: 244,
              width: 362,
              child: Image.asset(
                'assets/images/girl.png',
              ),
            ),
          ),


          Positioned(
            bottom: 50,
            left: 20,
            child: Container(
              height: 100,
              width: 79.41,
              child: SvgPicture.asset(
                'assets/icons/logotext.svg',
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              top: 60,
              left:20,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All you need in ',
                      style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w700,fontSize: 20 ,color: Colors.white),
                    ),


                    Text(
                      'one place',
                      style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w700,fontSize: 20 ,color: Colors.white),
                    ),
                  ])
          )]  );
  }
}
