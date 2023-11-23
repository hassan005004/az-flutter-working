// complete code
import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'ink_well.dart';
import 'responsive.dart';

// ignore: must_be_immutable
class AzIcon extends StatelessWidget {
  final IconData? icon;
  double? _size;
  Color? _color;
  String? _semanticLabel;
  TextDirection? _textDirection;

  AzIcon(
      this.icon, {
        Key? key,
      }) : super(key: key);

  AzIcon size(double size){
    _size = size;
    return this;
  }

  // AzIcon color(String HexCode){
  //   _color = hexColor(HexCode);
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


  AzContainer toContainer() => AzContainer(widget: toBuild());
  AzResponsive toResponsive() => AzResponsive(toBuild());
  AzCard toCard() => AzCard(toBuild());
  AzCenter toCenter() => AzCenter(toBuild());
  AzGestureDetector toGestureDetector() => AzGestureDetector(toBuild());
  AzPositioned toPositioned() => AzPositioned(toBuild());
  AzInkWell toInkWell() => AzInkWell(toBuild());
  
}