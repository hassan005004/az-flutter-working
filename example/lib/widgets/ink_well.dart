import 'gesture_detector.dart';

import 'center.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'container.dart';
import 'responsive.dart';
// https://github.com/hassan005004/niku/blob/main/lib/extension/widget.dart

// ignore: must_be_immutable
class AzInkWell extends StatelessWidget{
  Widget? child;
  // final Key? key;

  void Function(TapDownDetails)? _onTapDown;
  void Function(TapUpDetails)? _onTapUp;
  VoidCallback? _onTap;
  VoidCallback? _onTapCancel;
  VoidCallback? _onSecondaryTap;
  // void Function(TapUpDetails)? onSecondaryTapUp;
  // void Function(TapDownDetails)? onSecondaryTapDown;
  // void Function()? onSecondaryTapCancel;
  // void Function(bool)? onHighlightChanged;
  // void Function(bool)? onHover;
  // MouseCursor? mouseCursor;
  Color? _focusColor;
  Color? _hoverColor;
  Color? _highlightColor;
  // MaterialStateProperty<Color?>? overlayColor;
  Color? _splashColor;
  // InteractiveInkFeatureFactory? splashFactory;
  double? _radius;
  BorderRadius? _borderRadius;
  // ShapeBorder? customBorder;
  bool? _enableFeedback = true;
  bool _excludeFromSemantics = false;
  // FocusNode? focusNode;
  bool _canRequestFocus = true;
  // void Function(bool)? onFocusChange;
  bool _autofocus = false;
  // MaterialStatesController? statesController;

  AzInkWell(this.child, {Key? key}) : super(key: key);
  AzInkWell internalUseOfAz({
    thisOnTap,
    // void Function()? onDoubleTap,
    // void Function()? onLongPress,
    // void Function(TapDownDetails)? onTapDown,
    // void Function(TapUpDetails)? onTapUp,
    // void Function()? onTapCancel,
    // void Function()? onSecondaryTap,
    // void Function(TapUpDetails)? onSecondaryTapUp,
    // void Function(TapDownDetails)? onSecondaryTapDown,
    // void Function()? onSecondaryTapCancel,
    // void Function(bool)? onHighlightChanged,
    // void Function(bool)? onHover,
    // MouseCursor? mouseCursor,
    // Color? focusColor,
    // Color? hoverColor,
    // Color? highlightColor,
    // MaterialStateProperty<Color?>? overlayColor,
    // Color? splashColor,
    // InteractiveInkFeatureFactory? splashFactory,
    // double? radius,
    thisBorderRadius,
    // ShapeBorder? customBorder,
    // bool? enableFeedback = true,
    // bool excludeFromSemantics = false,
    // FocusNode? focusNode,
    // bool canRequestFocus = true,
    // void Function(bool)? onFocusChange,
    // bool autofocus = false,
    // MaterialStatesController? statesController,

  }){
    _onTap = thisOnTap;
    _borderRadius = thisBorderRadius;
    return this;
  }

  AzInkWell onTapDown(void Function(TapDownDetails)? callback){
    _onTapDown = callback;
    return this;
  }
  AzInkWell onTapUp(void Function(TapUpDetails)? callback){
    _onTapUp = callback;
    return this;
  }
  AzInkWell onTap(VoidCallback? callback){
    _onTap = callback;
    return this;
  }
  AzInkWell onTapCancel(VoidCallback? callback){
    _onTapCancel = callback;
    return this;
  }
  AzInkWell onSecondaryTap(VoidCallback? callback){
    _onSecondaryTap = callback;
    return this;
  }

  AzInkWell focusColor(Color color){
    _focusColor = color;
    return this;
  }

  AzInkWell hoverColor(Color color){
    _hoverColor = color;
    return this;
  }

  AzInkWell highlightColor(Color color){
    _highlightColor = color;
    return this;
  }

  // MaterialStateProperty<Color?>? overlayColor;

  AzInkWell splashColor(Color color){
    _splashColor = color;
    return this;
  }

  // InteractiveInkFeatureFactory? splashFactory;
  AzInkWell radius(double double){
    _radius = double;
    return this;
  }

  AzInkWell borderRadius(double double){
    _borderRadius = BorderRadius.circular(double);
    return this;
  }

  AzInkWell borderRadiusLeft(double double){
    _borderRadius = BorderRadius.only(
      topLeft:Radius.circular(double),
      bottomLeft:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusTop(double double){
    _borderRadius = BorderRadius.only(
      topLeft:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusRight(double double){
    _borderRadius = BorderRadius.only(
      bottomRight:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusBottom(double double){
    _borderRadius = BorderRadius.only(
      bottomRight:Radius.circular(double),
      bottomLeft:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusTopLeftBottomRight(double double){
    _borderRadius = BorderRadius.only(
      topLeft:Radius.circular(double),
      bottomRight:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusBottomLeftTopRight(double double){
    _borderRadius = BorderRadius.only(
      bottomLeft:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzInkWell borderRadiusCircle(double double){
    _borderRadius = const BorderRadius.only(
      topLeft:Radius.circular(1000),
      topRight:Radius.circular(1000),
      bottomRight:Radius.circular(1000),
      bottomLeft:Radius.circular(1000),
    );
    return this;
  }

  // ShapeBorder? customBorder;
  AzInkWell enableFeedback(bool bool){
    _enableFeedback = bool;
    return this;
  }

  AzInkWell excludeFromSemantics(bool bool){
    _excludeFromSemantics = bool;
    return this;
  }

  // FocusNode? focusNode;

  AzInkWell canRequestFocus(bool bool){
    _canRequestFocus = bool;
    return this;
  }

  // void Function(bool)? onFocusChange;

  AzInkWell autofocus(bool bool){
    _autofocus = bool;
    return this;
  }

  toBuild() {
    return InkWell(
      onTap: _onTap,
      // void Function()? onDoubleTap,
      // void Function()? onLongPress;
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onSecondaryTap: _onSecondaryTap,
      // void Function(TapUpDetails)? onSecondaryTapUp,
      // void Function(TapDownDetails)? onSecondaryTapDown,
      // void Function()? onSecondaryTapCancel,
      // void Function(bool)? onHighlightChanged,
      // void Function(bool)? onHover,
      // MouseCursor? mouseCursor,
      focusColor: _focusColor,
      hoverColor: _hoverColor,
      highlightColor: _highlightColor,
      // MaterialStateProperty<Color?>? overlayColor,
      splashColor: _splashColor,
      // InteractiveInkFeatureFactory? splashFactory,
      radius: _radius,
      borderRadius: _borderRadius,
      // ShapeBorder? customBorder,
      enableFeedback: _enableFeedback,
      excludeFromSemantics: _excludeFromSemantics,
      // FocusNode? focusNode,
      canRequestFocus: _canRequestFocus,
      // void Function(bool)? onFocusChange,
      autofocus: _autofocus,
      // MaterialStatesController? statesController,
      child: child,

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
  AzPositioned toPositioned() => AzPositioned(toBuild());
  AzGestureDetector toGestureDetector() => AzGestureDetector(toBuild());

}