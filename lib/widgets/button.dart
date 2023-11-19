import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:az_ui/helper/config.dart';

class AzButton extends StatelessWidget{
  BuildContext context;
  dynamic name;
  void Function()? onPressed;
  Color borderColor = Colors.transparent;//border_color;
  Color _bgColor = Colors.transparent;//main_one_color.withOpacity(0.125);
  double _opacity = 0.25;
  Color _textColor = Colors.black;
  EdgeInsets padding = EdgeInsets.symmetric(horizontal: padding_x, vertical: padding_y);
  double radius = radius_one;
  FontWeight fontWeight = FontWeight.bold;
  double _fontSize = 13;
  double? _width;
  double? _height;


  AzButton(this.context, this.name, {this.onPressed});

  fs(double size){
    _fontSize = size;
    return this;
  }

  color(Color color){
    borderColor = color;
    _bgColor = color.withOpacity(_opacity);
    // textColor = color;
    return this;
  }

  textColor(Color color){
    _textColor = color;
    return this;
  }

  bgColor(Color color){
    _bgColor = color.withOpacity(_opacity);
    return this;
  }

  opacity(opacity){
    _opacity = opacity;
    return this;
  }

  full(){
    _width = double.maxFinite;//MediaQuery.of(context).size.width;
    return this;
  }

  width(double width){
    _width = width;
    return this;
  }

  height(double height){
    _height = height;
    return this;
  }

  pLTRB(double left, double top, double right, double bottom){
    padding = EdgeInsets.fromLTRB(left, top, right, bottom);
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          width: _width,
          height: _height,
          padding: padding,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
                width: border_one,
                color: borderColor,
                strokeAlign: BorderSide.strokeAlignCenter
            ),
            borderRadius: BorderRadius.circular(radius),
            color: _bgColor,
          ),
          child: Center(
            child: name.runtimeType.toString() == 'String' ? Text(name.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _textColor,
                fontWeight: fontWeight,
                fontSize: _fontSize,
              ),) : name,
          ),
        )
    );
  }
}
