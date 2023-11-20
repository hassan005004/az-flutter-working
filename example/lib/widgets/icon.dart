// complete code
import 'positioned.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../helper/hex_color.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
// import 'extension.dart';

extension ExtIcon on Icon {
  AzIcon azIcon() => AzIcon(icon);
}

class AzIcon extends StatelessWidget {
  final IconData? icon;
  double? _size;
  Color? _color;
  String? _semanticLabel;
  TextDirection? _textDirection;

  AzIcon(
      this.icon, {
        Key? key,
      });

  AzIcon size(double size){
    _size = size;
    return this;
  }

  // AzIcon color(String HexCode){
  //   _color = hex_color(HexCode);
  //   return this;
  // }

  AzIcon color(Color color){
    _color = color;
    return this;
  }

  AzIcon semanticLabel(String semanticLabel){
    _semanticLabel = semanticLabel;
    return this;
  }

  AzIcon textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }
  AzIcon ltr(){
    _textDirection = TextDirection.ltr;
    return this;
  }
  AzIcon rtl() {
    _textDirection = TextDirection.rtl;
    return this;
  }

  @override
  toBuild() {
    return Icon(icon,
      key: key,
      size: _size,
      color: _color,
      semanticLabel: _semanticLabel,
      textDirection: _textDirection,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }


  AzContainer container() => AzContainer(widget: this.toBuild());
  AzCard card() => AzCard(this.toBuild());
  AzCenter center() => AzCenter(this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());

}