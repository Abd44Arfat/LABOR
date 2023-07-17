import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/widgets/Custom_Button.dart';
import 'package:laborapplication/resources/App_router.dart';

import '../../../generated/l10n.dart';
import '../../../resources/constants.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (

      body:


      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

            SizedBox(height: 69,),
            SvgPicture.asset(
            'assets/icons/logocard.svg',


            ),
            SizedBox(height: 64,),
            Text(
             S.of(context).title,
            style: TextStyle(
            fontSize: 48,
              fontWeight: FontWeight.w700,

            )
    ),


              SizedBox(height: 64,),

              Text(
                  "select language",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Quicksand",

                  )
              ),
              SizedBox(height: 18,),
              Text(
                  "English",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",

                  )
              ),
              SizedBox(height: 4,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 15,),
              Text(
                  "Arabic",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Quicksand",

                  )
              ),
              SizedBox(height: 4,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 28,),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 45),

            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
      "By creating an account, you agree to our ",
      style: TextStyle(
                fontSize: 12,
          fontFamily: "Quicksand",

      ),

    ),
                Text(
                  "Term and Conditions",
                  style: TextStyle(
                    fontSize: 12,
color: KMainColor,
                    fontFamily: "Quicksand",

                  ),
                ),
              ],
            ),
          ),
              SizedBox(height: 46,),
              CustomButton(
                size: 389,
                bordercolor: KMainColor,
                text: 'welcome',
                color:KMainColor, press: () {  GoRouter.of(context).go(AppRouter.KOnBoardingScreen) ; }, height: 60, fontesiz: 18, textColor: Colors.white,

              ),
              SizedBox(height: 46,),

            ],),
        ),
      ),


    );
  }
}
