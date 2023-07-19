import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/appBar.dart';

class BookService3 extends StatelessWidget {
  const BookService3({super.key});
  void Quickalert(BuildContext context) {
    QuickAlert.show(
      onConfirmBtnTap: (){GoRouter.of(context).go(AppRouter.KHomeScreen) ; },
        context: context,
        type: QuickAlertType.success,
        title: 'Your request has been completed',
        confirmBtnText: 'Home',
        confirmBtnColor: KMainColor);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kThemeApp,
        appBar: CustomAppBar(
          text: '',
          leadingiconp: 'assets/icons/Arrow_left.svg',
          actionicon: '',
        ),
        body: Stack(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      'Hourly cleaning',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF5FD068),
                        fontSize: 24,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                Positioned(
                  top: 70,
                  left: 10,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: kGrayColor,
                      shape: OvalBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        textAlign: TextAlign.center,
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 73,
                  left: 35,
                  child: Text(
                    'Step 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGrayColor,
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 90,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: kGrayColor,
                      shape: OvalBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        textAlign: TextAlign.center,
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 73,
                  left: 115,
                  child: Text(
                    'Step 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kGrayColor,
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 170,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: ShapeDecoration(
                      color: KMainColor,
                      shape: OvalBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        textAlign: TextAlign.center,
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 73,
                  left: 195,
                  child: Text(
                    'Step 3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: KMainColor,
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 25,
                    child: ClipRect(
                        clipBehavior: Clip.none,
                        child: SvgPicture.asset('assets/images/feature2.svg'))),
              ],
            ),
          ]),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child:
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                CustomButton(
                  size: 389,
                  bordercolor: KMainColor,
                  text: 'welcome',
                  color:KMainColor, press: () {

                  Quickalert(context);

                }, height: 60, fontesiz: 18, textColor: Colors.white,
                )
            ),
          )]
        ));
  }
}
