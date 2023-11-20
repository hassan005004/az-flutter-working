import 'dart:ui';


import 'package:flutter/cupertino.dart';
Color hex_color(String hexColorCode) {
  String hexColor = hexColorCode;//.toString();
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
  return Color(int.parse("0xFF000000"));
}

Color darken(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var f = 1 - percent / 100;
  return Color.fromARGB(
      c.alpha,
      (c.red * f).round(),
      (c.green  * f).round(),
      (c.blue * f).round()
  );
}

Color lighten(Color c, [int percent = 10]) {
  assert(1 <= percent && percent <= 100);
  var p = percent / 100;
  return Color.fromARGB(
      c.alpha,
      c.red + ((255 - c.red) * p).round(),
      c.green + ((255 - c.green) * p).round(),
      c.blue + ((255 - c.blue) * p).round()
  );
}

Color setOpacity(Color color, int _isActive, int _isDisabled){
  if(_isActive == 1) {
    return darken(color);
  } else if(_isDisabled == 1) {
    return lighten(color);
  }

  return color;
}