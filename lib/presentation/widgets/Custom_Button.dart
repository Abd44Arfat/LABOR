import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.size,
    required this.press,
    required this.text,

    this.image,

    required this.color, required this.height, required this.fontesiz, required this.bordercolor, required this.textColor,
  }) : super(key: key);

  final double size;
  final double height;
  final Color bordercolor;
final double fontesiz;
  final VoidCallback press;
  final String text;
  final String? image;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: height,
      width: size,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: bordercolor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (image != null) SvgPicture.asset(image!),
                if (image != null) SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontesiz,
                    fontFamily: "Quicksand",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}