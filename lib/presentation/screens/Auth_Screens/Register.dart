import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/login.dart';
import 'package:laborapplication/presentation/screens/Auth_Screens/widget/Title_Auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/Custom_Text_Field.dart';
import 'login.dart';
import 'login.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
var fullname,password, phone;
  GlobalKey<FormState>formstate=new GlobalKey<FormState>();

  
  signup()async{
    
    var  formdata= formstate.currentState;
    if (formdata!.validate()) {
formdata.save();
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(

    email: phone,
    password: password,
  );
  return credential;
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
    }  else{
      print('Not Valid');
    }
  }
  
  
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,

    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TitleAuth(
                    title: 'Register',
                    subtitle:
                    'Please Enter your Phone and password to continue',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Full Name',
                  style: TextStyle(fontFamily: "Quicksand"),
                ),
                CustomFormTextField(
                  onSaved:(val){
                    fullname=val;

                  } ,
                  icon: Icons.person,
                  hintText: 'Enter Your Email',
                ),
                Text(
                  'Phone',
                  style: TextStyle(fontFamily: "Quicksand"),
                ),
                CustomFormTextField(
onSaved:(val){
  phone=val;

} ,
                  icon: Icons.phone,
                  hintText: 'Enter Your Password',
                ),
                Text(
                  'Password',
                  style: TextStyle(fontFamily: "Quicksand"),
                ),
                CustomFormTextField(
                  onSaved:(val){
                    password=val;

                  } ,
                  icon: Icons.visibility,
                  hintText: 'Enter Your Password',
                ),

                SizedBox(
                  height: 24,
                ),
                CustomButton(
                  bordercolor: KMainColor,
                  size: 389,
                  text: 'Register',
                  color: KMainColor,
                  press: () async{
                    UserCredential response=       await signup();
print('*************************');
                  if (response !=null) {
                    GoRouter.of(context).go(AppRouter.KLoginScreen);
                  } else {
                    print('sign up faild');
                  }
                  },
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
                  text: 'Google',
                  image:'assets/images/google.svg' ,
                  color: kThemeApp,
                  press: ()async {
             UserCredential cred=   await    signInWithGoogle();

print(cred);


                  },
                  height: 60,
                  fontesiz: 18,
                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have Account ? ',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Quicksand",
                      ),
                    ),
                    SizedBox(width: 2,),
                    GestureDetector(
                      onTap: (){},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Quicksand",
                            fontWeight: FontWeight.w700
                        ),
                      ),
                    ),

                  ],

                ), SizedBox(height: 100,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}