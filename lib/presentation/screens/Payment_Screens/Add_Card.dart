import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/constants.dart';
import '../../widgets/Custom_Button.dart';
import '../../widgets/appBar.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'History',
        leadingiconp: 'assets/icons/Arrow_left.svg',
        actionicon: '',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(children: [

                Container(
                  width: 312,
                  height: 158,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.96, -0.29),
                      end: Alignment(-0.96, 0.29),
                      colors: [Color(0xFF66C8CE), Color(0xFF50E3C2)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.16),
                    ),
                  ),

                  child: Container(
                    width: 49.31,
                    height: 45.99,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                        Positioned(
                          left: -0,
                          top: 8.57,
                          child: Opacity(
                            opacity: 0.9,
                            child: Container(
                              width: 30.82,
                              height: 28.75,
                              decoration: ShapeDecoration(
                                color: Color(0xFFEB001B),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          left: 18.49,
                          top: 8.57,
                          child: Opacity(
                            opacity: 0.9,
                            child: Container(
                              width: 30.82,
                              height: 28.75,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF79E1B),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top:70,
                  child: SizedBox(
                    width: 201.57,
                    child: Text(
                      '8700 - XXXX - XXXX - 9830',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 23,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top:20,
                  right: 20,
                  child: Container(
                    width: 35.40,
                    height: 24.57,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 35.40,
                            height: 24.57,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.90, -0.44),
                                end: Alignment(-0.9, 0.44),
                                colors: [Color(0xFFFBC926), Color(0xFFFFFBCC), Color(0xCCC3922E), Color(0xFFEED688), Color(0xFFFFFBCC)],
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 0.70, color: Color(0xFFF9FFF6)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),

                        ),






                      ],
                    ),
                  ),

                ),



              ]),
            ),


            CustomButton(
              bordercolor: KMainColor,
              size: 389,
              text: '+ Add Card',
              color: KMainColor,
              press: () {},
              height: 60,
              fontesiz: 18, textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
