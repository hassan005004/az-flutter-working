import 'center.dart';
import 'positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'container.dart';
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

  AzInkWell(this.child, {Key? key}) : super(key: key);

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

  toBuild() {
    return InkWell(
      onTap: _onTap,
      // void Function()? onDoubleTap,
      // void Function()? onLongPress,
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
      // Color? focusColor,
      // Color? hoverColor,
      // Color? highlightColor,
      // MaterialStateProperty<Color?>? overlayColor,
      // Color? splashColor,
      // InteractiveInkFeatureFactory? splashFactory,
      // double? radius,
      // BorderRadius? borderRadius,
      // ShapeBorder? customBorder,
      // bool? enableFeedback = true,
      // bool excludeFromSemantics = false,
      // FocusNode? focusNode,
      // bool canRequestFocus = true,
      // void Function(bool)? onFocusChange,
      // bool autofocus = false,
      // MaterialStatesController? statesController,
      child: child,

    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer toContainer() => AzContainer(widget: toBuild());
  AzCard toCard() => AzCard(toBuild());
  AzCenter toCenter() => AzCenter(toBuild());
  AzPositioned toPositioned() => AzPositioned(toBuild());
  AzInkWell toInkWell() => AzInkWell(toBuild());

}