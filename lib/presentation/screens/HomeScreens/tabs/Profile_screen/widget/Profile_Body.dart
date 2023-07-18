import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../resources/App_router.dart';
import '../../../../../../resources/constants.dart';
import '../../../../../widgets/Custom_Button.dart';
import 'Card_option_setting.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 387,
              height: 190,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/image.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Abdul Aziz Al-Qahtany',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Quicksand'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    bordercolor: KMainColor,
                    size: 80,
                    press: () {},
                    text: 'Edit',
                    color: KMainColor,
                    height: 30,
                    fontesiz: 12,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card_option_setting(
              title: 'Payment Methods',
              Description: 'Add your credit & debit cards',
              prefixicon: Icons.credit_card_rounded,
              suffixicon: Icons.arrow_forward_ios,
            ),
            GestureDetector(
              onTap: (){ GoRouter.of(context).go(AppRouter.KMapScreen) ; },
              child: Card_option_setting(
                  title: 'Location',
                  Description: 'Add your Home Location',
                  prefixicon: Icons.location_on_rounded,
                  suffixicon: Icons.arrow_forward_ios),
            ),
            Card_option_setting(
                title: 'Push Notification',
                Description: 'For daily update and others',
                prefixicon: Icons.notifications,
                suffixicon: Icons.arrow_forward_ios),
            Card_option_setting(
                title: 'Contact Us',
                Description: 'For more information',
                prefixicon: Icons.phone_in_talk_sharp,
                suffixicon: Icons.arrow_forward_ios),
            Card_option_setting(
                title: 'Logout',
Description: '',
                prefixicon: Icons.logout_rounded,
                suffixicon: Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
