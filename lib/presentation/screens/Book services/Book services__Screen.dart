import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Book%20services/widgets/drop_down_button.dart';
import 'package:laborapplication/resources/constants.dart';
import 'package:quickalert/quickalert.dart';

import '../../../resources/App_router.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/appBar.dart';

class BookServices extends StatelessWidget {
  const BookServices({super.key});
void Quickalert(BuildContext context) {
  QuickAlert.show(context: context, type: QuickAlertType.success,title: 'Your request has been completed',confirmBtnColor: KMainColor);


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
      body: Stack(
        children: [
          Column(


            crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                color: Color(0xFF5FD068),
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
                color: Color(0xFF5FD068),
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
                color: kGrayColor,
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
                color: kGrayColor,
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
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'Period',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Container(
              width: 150,
              height: 56,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFF5DF99)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: SvgPicture.asset('assets/icons/mornung.svg'),
                  ),
                  Text(
                    'Morning',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 150,
            height: 56,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset('assets/icons/night.svg'),
                ),
                Text(
                  'Night',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'number of Hours',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyDropdownButton(),

          ],
        ),
      ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'number of Hours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyDropdownButton(),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'number of Hours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyDropdownButton(),

                ],
              ),
            ),

    ]

    )
    ,
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

    GoRouter.of(context).go(AppRouter.KBookService2) ;

                  }, height: 60, fontesiz: 18, textColor: Colors.white,
  )
  ),
)]


    )
    );
  }
}
