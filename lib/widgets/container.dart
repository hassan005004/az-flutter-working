

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:az_ui/helper/config.dart';

extension BaseProperty on AzContainer {}

class AzContainer extends StatelessWidget {
  Widget? _widget;
  // Widget build() => this._widget;
  Color? _bgColor;
  EdgeInsets? _padding;
  BorderRadius? _radius;
  double? _width;


  Widget? child;

  AzContainer({this.child});


  pSymmetric({required double h, required double v}){
    _padding = EdgeInsets.symmetric(horizontal: h, vertical: v);
    return this;
  }

  width(double width){
    _width = width;
    return this;
  }

  radius(double radius){
    _radius = BorderRadius.circular(radius);
    return this;
  }

  bg(Color color){
    _bgColor = color;
    return this;
  }

  // bgWhite(){
  //   _bgColor = Colors.white;
  //   return this;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: _bgColor,
      width: _width,
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: _radius,
      ),
      padding: _padding,
      child: child,
    );
  }


//
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: _bgColor,
  //     child: build,
  //   );
  // }

}
