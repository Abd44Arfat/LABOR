import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/Title_Auth.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Text_Field.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Align(
              alignment: Alignment.center,
              child: TitleAuth(
                title: 'Login',
                subtitle:
                'Please Enter your Phone and passwordto continue',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Phone',
              style: TextStyle(fontFamily: "Quicksand"),
            ),
            CustomFormTextField(
              icon: Icons.phone,
              hintText: 'Enter Your Email',
            ),
            Text(
              'Password',
              style: TextStyle(fontFamily: "Quicksand"),
            ),
            CustomFormTextField(
              icon: Icons.visibility,
              hintText: 'Enter Your Password',
            ),
            GestureDetector(
              onTap: (){GoRouter.of(context).go(AppRouter.KOnBoardingScreen) ;},
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(
                    fontFamily: "Quicksand",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            CustomButton(
              bordercolor: KMainColor,
              size: 389,
              text: 'Login',
              color: KMainColor,
              press: () {},
              height: 60,
              fontesiz: 18, textColor: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: Divider(
                    color: kTextColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
                SizedBox(
                  width:120 ,
                  child: Divider(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CustomButton(
              textColor: kTextColor,
              bordercolor: kGrayColor,
              size: 389,
              text: 'Facebook',
image:'assets/images/facebook.svg' ,
              color: kThemeApp,
              press: () {},
              height: 60,
              fontesiz: 18,
            ),
            SizedBox(
              height: 18,
            ),
            CustomButton(
              textColor: kTextColor,
              bordercolor: kGrayColor,
              size: 389,
              text: 'Facebook',
              image:'assets/images/google.svg' ,
              color: kThemeApp,
              press: () {},
              height: 60,
              fontesiz: 18,
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t Have Account ? ',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Quicksand",
                  ),
                ),
SizedBox(width: 2,),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
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