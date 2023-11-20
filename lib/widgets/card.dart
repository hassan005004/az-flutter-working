// all file new code
import 'package:az_ui/widgets/positioned.dart';

import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import '../helper/hex_color.dart';


extension ExtCard on Card {
  AzCard azCard() => AzCard(child);
}

class AzCard extends StatelessWidget {
  final Widget? child;
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
      });

  AzCard color(String hexCode){
    _color = hex_color(hexCode);
    return this;
  }

  AzCard shadowColor(String hexCode){
    _shadowColor = hex_color(hexCode);
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

  @override
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

  AzContainer container() => AzContainer(widget: this.toBuild());
  AzCenter center() => AzCenter(this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());
}