

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:az_ui/helper/config.dart';
import 'container.dart';

class AzText extends AzContainer{
  BuildContext context;
  dynamic name;
  // Color borderColor = Colors.transparent;//border_color;
  // Color _bgColor = Colors.transparent;//main_one_color.withOpacity(0.125);
  // double _opacity = 0.25;
  Color _textColor = Colors.black;
  // EdgeInsets padding = EdgeInsets.symmetric(horizontal: padding_x, vertical: padding_y);
  // double radius = radius_one;
  FontWeight _fontWeight = FontWeight.normal;
  double _fontSize = 13;
  // double? _width;
  // double? _height;


  AzText(this.context, this.name);

  fs(size){
    _fontSize = size.toDouble();
    return this;
  }

  fontWeight(FontWeight fontWeight){
    _fontWeight = fontWeight;
    return this;
  }

  fwBold(){
    _fontWeight = FontWeight.bold;
    return this;
  }


  color(Color color){
    _textColor = color;
    return this;
  }

  // textColor(Color color){
  //   _textColor = color;
  //   return this;
  // }

  // bgColor(Color color){
  //   _bgColor = color.withOpacity(_opacity);
  //   return this;
  // }

  // opacity(opacity){
  //   _opacity = opacity;
  //   return this;
  // }

  // full(){
  //   _width = double.maxFinite;//MediaQuery.of(context).size.width;
  //   return this;
  // }

  // width(double width){
  //   _width = width;
  //   return this;
  // }

  // height(double height){
  //   _height = height;
  //   return this;
  // }

  // pLTRB(double left, double top, double right, double bottom){
  //   padding = EdgeInsets.fromLTRB(left, top, right, bottom);
  //   return this;
  // }

  @override
  Widget build(BuildContext context) {
    return AzContainer(
      child: Text(name.toString(),
        style: TextStyle(
          color: _textColor,
          fontWeight: _fontWeight,
          fontSize: _fontSize,
        ),),
    );
  }

  Text buildItOnAzMethod() => Text(name);
  AzContainer az() => AzContainer(child:this.buildItOnAzMethod());

}
