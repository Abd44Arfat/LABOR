import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/Title_Auth.dart';
import 'package:laborapplication/presentation/widgets/appBar.dart';

import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Text_Field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(leadingiconp:'assets/icons/Arrow_left.svg',actionicon:'' ,),

        body:Padding(
          padding: const EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 40,),
              Align(
                  alignment: Alignment.center,
                  child: TitleAuth(title: 'Forget Password', subtitle: 'Enter your Phone Number to reset password.',)),
              SizedBox(height: 24,),
              Text(
                'Phone',
                style: TextStyle(fontFamily: "Quicksand",fontWeight: FontWeight.w700),
              ),
              CustomFormTextField(
                icon: Icons.visibility,
                hintText: 'Enter Your Password',
              ),
              Text(
                'Phone',
                style: TextStyle(fontFamily: "Quicksand",fontWeight: FontWeight.w700),
              ),
              CustomFormTextField(
                icon: Icons.visibility,
                hintText: 'Enter Your Confirm Password',
              ),
              SizedBox(height: 30,),
              CustomButton(
                bordercolor: KMainColor,
                size: 389,
                text: 'Login',
                color: KMainColor,
                press: () {},
                height: 60,
                fontesiz: 18, textColor: Colors.white,
              ),
            ],

          ),
        ));
  }
}
