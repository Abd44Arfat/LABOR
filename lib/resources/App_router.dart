import 'package:go_router/go_router.dart';


import '../presentation/screens/Auth_Screens/OTP.dart';
import '../presentation/screens/Auth_Screens/Register.dart';
import '../presentation/screens/Auth_Screens/Reset_password.dart';
import '../presentation/screens/Auth_Screens/forget_password.dart';
import '../presentation/screens/Auth_Screens/login.dart';
import '../presentation/screens/HomeScreens/tabs/History_screen/tabviewbody.dart';
import '../presentation/screens/HomeScreens/tabs/home_Screen/Home.dart';
import '../presentation/screens/HomeScreens/tabs/Categories_Screen/categories.dart';
import '../presentation/screens/HomeScreens/tabs/Profile_screen/profile.dart';
import '../presentation/screens/HomeScreens/widget/button_nav_bar.dart';
import '../presentation/screens/Map/Map_Screen.dart';
import '../presentation/screens/Payment_Screens/Add_Card.dart';
import '../presentation/screens/welcome_screens/Splashscreen.dart';
import '../presentation/screens/welcome_screens/choose_language_screen.dart';
import '../presentation/screens/welcome_screens/onBoardingScreen.dart';



abstract class AppRouter {

  static const KChooseLanguage='/ChooseLanguage';
  static const KOnBoardingScreen='/OnBoardingScreen';
  static const KHomeScreen='/HomeScreen';
  static const KHistoryScreen='/HistoryScreen';
  static const KCategoriesScreen='/CategoriesScreen';
  static const KProfileScreen='/ProfileScreen';
  static const KLoginScreen='/LoginScreen';
  static const KOTPSreen='/KOTPSreen';


  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, State) =>  ForgetPassword()),
    GoRoute(path: KChooseLanguage, builder: (context, State) => const ChooseLanguage()),
    GoRoute(path: KOnBoardingScreen, builder: (context, State) =>  OnBoardingScreen()),
    GoRoute(path: KHomeScreen, builder: (context, State) =>  HomeScreen()),
    GoRoute(path: KHistoryScreen, builder: (context, State) =>  TapCategories()),
    GoRoute(path: KCategoriesScreen, builder: (context, State) =>  categoriesScreen()),
    GoRoute(path: KProfileScreen, builder: (context, State) =>  ProfileScreen()),
    GoRoute(path: KLoginScreen, builder: (context, State) =>  LoginScreen()),
    GoRoute(path: KOTPSreen, builder: (context, State) =>  OTPSreen()),

  ]);

}
