// all file new code
import 'positioned.dart';

import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'package:flutter/material.dart';
import '../helper/hex_color.dart';


extension ExtCard on Card {
  AzCard azCard() => AzCard(child);
}
// ignore: must_be_immutable
class AzCard extends StatelessWidget {
  final Widget? child;
  // Key? key;
  Color? _color;
  Color? _shadowColor;
  double? _elevation;
  ShapeBorder? _shape;
  bool _borderOnForeground = true;
  EdgeInsetsGeometry? _margin;
  Clip? _clipBehavior;
  bool _semanticContainer = true;

  AzCard(
      this.child, {
        Key? key,
      }) : super(key: key);

  AzCard color(String hexCode){
    _color = hexColor(hexCode);
    return this;
  }

  AzCard shadowColor(String hexCode){
    _shadowColor = hexColor(hexCode);
    return this;
  }

  AzCard elevation(double elevation){
    _elevation = elevation;
    return this;
  }

  AzCard shape(ShapeBorder shape){
    _shape = shape;
    return this;
  }

  AzCard borderOnForeground(bool borderOnForeground){
    _borderOnForeground = borderOnForeground;
    return this;
  }

  AzCard margin(EdgeInsetsGeometry margin){
    _margin = margin;
    return this;
  }

  AzCard clipBehavior(Clip clipBehavior){
    _clipBehavior = clipBehavior;
    return this;
  }

  AzCard semanticContainer(bool semanticContainer){
    _semanticContainer = semanticContainer;
    return this;
  }

  toBuild() {
    return Card(
      key: key,
      color: _color,
      shadowColor: _shadowColor,
      elevation: _elevation,
      shape: _shape,
      borderOnForeground: _borderOnForeground,
      margin: _margin,
      clipBehavior: _clipBehavior,
      semanticContainer: _semanticContainer,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());
}