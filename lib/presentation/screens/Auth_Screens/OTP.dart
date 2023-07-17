import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/forget_password.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/Title_Auth.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/o_t_p_text_field.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';

class OTPSreen extends StatefulWidget {
  const OTPSreen({super.key});


  @override
  State<OTPSreen> createState() => _OTPSreenState();
}

class _OTPSreenState extends State<OTPSreen> {

  final FirebaseAuth auth=FirebaseAuth.instance;
  var  code='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            TitleAuth(
              title: 'OTP',
              subtitle:
                  'An Authentecation code has been sent to (+02) 01003625286  ',
            ),
            SizedBox(
              height: 70,
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPTextField(onChanged: (value){code=value;},),
                OTPTextField(onChanged: (value){code=value;},),
                OTPTextField(onChanged: (value){code=value;},),
                OTPTextField(onChanged: (value){code=value;},),
                OTPTextField(onChanged: (value){code=value;},),
                OTPTextField(onChanged: (value){code=value;},),

              ],
            )),
            CustomButton(
              size: 389,
              bordercolor: KMainColor,
              text: 'welcome',
              color: KMainColor,
              press: ()async {
                try{
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId:ForgetPassword.verify, smsCode: code);
                  await auth.signInWithCredential(credential);
                  GoRouter.of(context).go(AppRouter.KHomeScreen) ;
                }
                catch(e){


                }

                // Sign the user in (or link) with the credential


              },
              height: 60,
              fontesiz: 18,
              textColor: Colors.white,
            ),
SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Code Sent Resend Code in ',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Quicksand",
                  ),
                ),
                SizedBox(width: 2,),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    '00:50',
                    style: TextStyle(
                      color: kSecondaryColor,
                        fontSize: 15,
                        fontFamily: "Quicksand",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),

              ],

            )
          ],
        ),
      ),
    );
  }
}
