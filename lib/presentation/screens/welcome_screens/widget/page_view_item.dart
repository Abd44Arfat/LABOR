import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.subtitle, required this.title, required this.image});
  final String subtitle;
  final String title;final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column (
        children: [
          SizedBox(height: 110,),
        SvgPicture.asset(
          image,),
          SizedBox(height: 38,),

          Text(
              title,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                fontFamily: "Quicksand",
              )
          ),
          SizedBox(height: 24,),

          Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(

                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Quicksand",
              )
          )

        ],


      ),
    );
  }
}
