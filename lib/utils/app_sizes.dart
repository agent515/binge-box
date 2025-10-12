import 'package:flutter/material.dart';

class AppSizes {
  late Size _screenSize;

  late bool isPhone;
  late double width;
  late double height;

  late double topPadding;

  //For dynamic Sizing
  late double widthRatio;
  late double heightRatio;
  late double fontRatio;

  //padding
  late double padding4;
  late double padding8;
  late double padding16;
  late double padding24;
  late double padding32;
  late double padding40;
  late double padding48;

  // SizedBoxes
  late SizedBox vPadding4;
  late SizedBox vPadding8;
  late SizedBox vPadding16;
  late SizedBox vPadding24;
  late SizedBox vPadding32;
  late SizedBox vPadding40;
  late SizedBox vPadding48;

  late SizedBox hPadding4;
  late SizedBox hPadding8;
  late SizedBox hPadding16;
  late SizedBox hPadding24;
  late SizedBox hPadding32;
  late SizedBox hPadding40;
  late SizedBox hPadding48;

  void init(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    topPadding = MediaQuery.of(context).padding.top;
    width = _screenSize.shortestSide;
    height = _screenSize.longestSide;
    isPhone = _screenSize.shortestSide < 600;
    widthRatio = isPhone ? _screenSize.width / 360 : _screenSize.width / 900;
    heightRatio =
        isPhone ? _screenSize.height / 720 : _screenSize.height / 1200;

    padding4 = 4.0 * widthRatio;
    padding8 = 8.0 * widthRatio;
    padding16 = 16.0 * widthRatio;
    padding24 = 24.0 * widthRatio;
    padding32 = 24.0 * widthRatio;
    padding40 = 40.0 * widthRatio;
    padding48 = 24.0 * widthRatio;

    // Initialize sizedboxes
    vPadding4 = SizedBox(height: padding4);
    vPadding8 = SizedBox(height: padding8);
    vPadding16 = SizedBox(height: padding16);
    vPadding24 = SizedBox(height: padding24);
    vPadding32 = SizedBox(height: padding24);
    vPadding40 = SizedBox(height: padding40);
    vPadding48 = SizedBox(height: padding40);

    hPadding4 = SizedBox(width: padding4);
    hPadding8 = SizedBox(width: padding8);
    hPadding16 = SizedBox(width: padding16);
    hPadding24 = SizedBox(width: padding24);
    hPadding32 = SizedBox(width: padding40);
    hPadding40 = SizedBox(width: padding40);
    hPadding48 = SizedBox(width: padding40);
  }

  double constraintHelper(double minLength, double maxLength, double length) {
    if (length <= maxLength && length >= minLength) return length;
    return (length < minLength) ? minLength : maxLength;
  }

  void refreshSize(context) {
    _screenSize = MediaQuery.of(context).size;
    width = _screenSize.width;
    height = _screenSize.height;
  }
}
