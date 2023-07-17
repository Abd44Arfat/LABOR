import 'package:flutter/cupertino.dart';

class SizeConfig{
  static double? ScreenWidth;
  static double? ScreenHeight;
  static double? defaultSize;
  static Orientation ?orientation;

  void init(BuildContext context) {
    ScreenWidth = MediaQuery.of(context).size.width;
    ScreenHeight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    if (ScreenWidth != null && ScreenHeight != null && orientation != null) {
      defaultSize = orientation == Orientation.landscape
          ? ScreenHeight! * 0.024
          : ScreenWidth! * 0.024;
      print('this is default size: $defaultSize');
    } else {
      // Handle null values here (e.g. provide default values or throw an error)
    }
  }}