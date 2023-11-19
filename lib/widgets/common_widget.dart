import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/config.dart';
import 'button.dart';
import 'navigate.dart';

Widget label(name, {double fontSize = 14, FontWeight fontWeight = FontWeight.bold, Color color = Colors.black}){
  return Text(name,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      color: color,
    ),
  );
}

Widget h1(name){
  return Text(name,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 35
    ),
  );
}

Widget h2(name, {color = Colors.black}){
  return Text(name,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: color
    ),
  );
}


Widget gap(double double){
  return SizedBox(height: double, width: double);
}

Widget gapX(double double){
  return SizedBox(width: double);
}

Widget gapY(double double){
  return SizedBox(height: double);
}

Widget dialogTitle(context, name, {showCross = true}){
  return Row(
    children: [
      Text(name,
        style: TextStyle(
            color: main_one_color,
            fontSize: 18,
            fontWeight: FontWeight.bold
        ),
      ),
      Spacer(),

      if(showCross == true)
        AzButton(context, "X",
          onPressed: () {
            Navigate(context).back();
          },
        ).pLTRB(16, 8, 16, 8).color(main_one_color)
    ],
  );
}


// only for pos screen
Widget labelCartHeading(text, {double width = 100, double fontSize = 10, FontWeight fontWeight = FontWeight.bold, bool isBorder = true}){
  return Container(
    width: width,
    constraints: BoxConstraints(
        minWidth: width
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
      child: Text(text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight
        ),
      ),
    ),
    decoration: BoxDecoration(
      border: isBorder == true ? Border.all(color: Colors.black) : Border.all(color: Colors.transparent, width: 0),
      // color: Color(0xFFF1F1F1),
    ),
  );
}
