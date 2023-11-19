import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'gesture_detector.dart';
extension ExtPositioned on AzPositioned {

}

class AzPositioned extends StatelessWidget{
  Widget child;
  final Key? key;
  double? _left;
  double? _top;
  double? _right;
  double? _bottom;
  double? _width;
  double? _height;

  AzPositioned(this.child, {this.key/*, this.left, this.top, this.right, this.bottom, this.height, this.width,*/});


  AzPositioned left(double double){
    _left = double;
    return this;
  }
  AzPositioned top(double double){
    _top = double;
    return this;
  }
  AzPositioned right(double double){
    _right = double;
    return this;
  }
  AzPositioned bottom(double double){
    _bottom = double;
    return this;
  }
  AzPositioned height(double double){
    _height = double;
    return this;
  }
  AzPositioned width(double double){
    _width = double;
    return this;
  }

  toBuild() {
    return Positioned(
      key: key,
      left: _left,
      top: _top,
      right: _right,
      bottom: _bottom,
      width: _width,
      height: _height,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  // AzContainer container() => AzContainer(widget: this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());

}