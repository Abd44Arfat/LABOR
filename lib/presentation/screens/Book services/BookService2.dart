import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laborapplication/presentation/screens/Book%20services/widgets/drop_down_button.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../resources/App_router.dart';
import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/appBar.dart';

class BookService2 extends StatelessWidget {
  const BookService2({super.key});

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
          SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        color: KMainColor,
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
                        color: KMainColor,
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
                child: Row(
                  children: [
                    SizedBox(width: 150, child: MyDropdownButton()),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(width: 150, child: MyDropdownButton()),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      width: 390,
                      height: 140,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF5FD068)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0CCECECE),
                            blurRadius: 24,
                            offset: Offset(0, 6),
                            spreadRadius: 6,
                          )
                        ],
                      ),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: SvgPicture.asset(
                                'assets/icons/company.svg',
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'United Group Company',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4),
                                SmoothStarRating(
                                  color: kSecondaryColor,
                                  borderColor: kSecondaryColor,
                                  rating: 4,
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Price',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '1500',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  '1 Filipino worker under contract',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                      ]))),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      width: 390,
                      height: 140,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF5FD068)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0CCECECE),
                            blurRadius: 24,
                            offset: Offset(0, 6),
                            spreadRadius: 6,
                          )
                        ],
                      ),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: SvgPicture.asset(
                                'assets/icons/company.svg',
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'United Group Company',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4),
                                SmoothStarRating(
                                  color: kSecondaryColor,
                                  borderColor: kSecondaryColor,
                                  rating: 4,
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Price',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '1500',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  '1 Filipino worker under contract',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                      ]))),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      width: 390,
                      height: 140,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF5FD068)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0CCECECE),
                            blurRadius: 24,
                            offset: Offset(0, 6),
                            spreadRadius: 6,
                          )
                        ],
                      ),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: SvgPicture.asset(
                                'assets/icons/company.svg',
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'United Group Company',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 4),
                                SmoothStarRating(
                                  color: kSecondaryColor,
                                  borderColor: kSecondaryColor,
                                  rating: 4,
                                ),
                                SizedBox(height: 4),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Price',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '1500',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  '1 Filipino worker under contract',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ]),
                      ])))
            ]),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                  size: 389,
                  bordercolor: KMainColor,
                  text: 'welcome',
                  color: KMainColor,
                  press: () {
                    GoRouter.of(context).go(AppRouter.KBookService3);
                  },
                  height: 60,
                  fontesiz: 18,
                  textColor: Colors.white,
                )),
          )
        ]));
  }
}
