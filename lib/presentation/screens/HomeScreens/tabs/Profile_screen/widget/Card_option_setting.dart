import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card_option_setting extends StatelessWidget {
  const Card_option_setting({
    super.key, required this.title,  this.Description,  this.suffixicon, required this.prefixicon,
  });
final String title;
final String? Description;
final IconData? suffixicon;
  final IconData prefixicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 387,
        height: 72,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Icon(prefixicon,size: 30,color: Colors.black54,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'Quicksand'),),

                  Text(Description!,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,fontFamily: 'Quicksand'),)



                ],
              ),

              SizedBox(width:26,),
              Icon(suffixicon,size: 30,color: Colors.black54,),
            ],

          ),
        ),
      ),
    );
  }
}
