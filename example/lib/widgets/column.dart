import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';
import 'ink_well.dart';
import 'responsive.dart';

// ignore: must_be_immutable
class AzColumn extends StatelessWidget{
  List<Widget> children;
  // final Key? key;

  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  TextBaseline? _textBaseline;

  AzColumn(this.children, {Key? key}) : super(key: key);
  AzColumn internalUseOfAz({
    thisMainAxisAlignment,
    thisCrossAxisAlignment,
    thisTextDirection,
    thisVerticalDirection,
    thisTextBaseline,
  }){
    _mainAxisAlignment = thisMainAxisAlignment;
    _crossAxisAlignment = thisCrossAxisAlignment;
    _textDirection = thisTextDirection;
    _verticalDirection = thisVerticalDirection;
    _textBaseline = thisTextBaseline;
    return this;
  }

  AzColumn crossStart(){
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }
  AzColumn crossCenter(){
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }
  AzColumn crossEnd(){
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  AzColumn mainStart(){
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }
  AzColumn mainCenter(){
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }
  AzColumn mainEnd(){
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }

  AzColumn mainSizeMax(){
    _mainAxisSize = MainAxisSize.max;
    return this;
  }
  AzColumn mainSizeMin(){
    _mainAxisSize = MainAxisSize.min;
    return this;
  }

  AzColumn textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }
  AzColumn ltr(){
    _textDirection = TextDirection.ltr;
    return this;
  }
  AzColumn rtl(){
    _textDirection = TextDirection.rtl;
    return this;
  }

  AzColumn verticalDirection(VerticalDirection verticalDirection){
    _verticalDirection = verticalDirection;
    return this;
  }
  AzColumn up(){
    _verticalDirection = VerticalDirection.up;
    return this;
  }
  AzColumn down(){
    _verticalDirection = VerticalDirection.down;
    return this;
  }

  AzColumn textBaseline(TextBaseline textBaseline){
    _textBaseline = textBaseline;
    return this;
  }
  AzColumn alphabetic(){
    _textBaseline = TextBaseline.alphabetic;
    return this;
  }
  AzColumn ideographic(){
    _textBaseline = TextBaseline.ideographic;
    return this;
  }

  toBuild() {
    return Column(
      key: key,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisAlignment: _mainAxisAlignment,
      mainAxisSize: _mainAxisSize,
      textDirection: _textDirection,
      verticalDirection: _verticalDirection,
      textBaseline: _textBaseline,
      children: children,
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