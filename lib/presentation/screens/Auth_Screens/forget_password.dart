import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/Title_Auth.dart';
import 'package:laborapplication/presentation/widgets/appBar.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Text_Field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String verify="";
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var phone;


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
            textInputType: TextInputType.phone,
            onChanged: (value){


              phone=value;
            },
            icon: Icons.phone,
            hintText: 'Enter Your Email',
          ),
          SizedBox(height: 30,),
          CustomButton(
            bordercolor: KMainColor,
            size: 389,
            text: 'Login',
            color: KMainColor,
            press: ()async{



              await FirebaseAuth.instance.verifyPhoneNumber(
                phoneNumber: '${phone}',
                verificationCompleted: (PhoneAuthCredential credential) {},
                verificationFailed: (FirebaseAuthException e) {},
                codeSent: (String verificationId, int? resendToken) {
                  ForgetPassword.verify=verificationId;
                  GoRouter.of(context).go(AppRouter.KOTPSreen);

                },
                codeAutoRetrievalTimeout: (String verificationId) {},
              );
            },
            height: 60,
            fontesiz: 18, textColor: Colors.white,
          ),
        ],

        ),
      ));
  }
}
