import 'package:flutter/cupertino.dart';

import '../../../../../../resources/constants.dart';
import '../../../widget/Grid_View_list.dart';

class BodyCategories extends StatelessWidget {
  const BodyCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(top: 15,right: 10,left: 10),
      color: kThemeApp,
      height: 700,
      width: 350,
      child: CustomGridViewList(),
    );
  }
}
