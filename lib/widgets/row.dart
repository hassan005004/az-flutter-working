import 'dart:ui';
import 'positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtRow on AzRow {
  AzRow azRow() => AzRow(children);
}

class AzRow extends StatelessWidget{
  List<Widget> children;
  final Key? key;

  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.center;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  TextDirection? _textDirection;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  TextBaseline? _textBaseline;

  AzRow(this.children, {this.key});

  AzRow crossStart(){
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }
  AzRow crossCenter(){
    _crossAxisAlignment = CrossAxisAlignment.center;
    return this;
  }
  AzRow crossEnd(){
    _crossAxisAlignment = CrossAxisAlignment.end;
    return this;
  }

  AzRow mainStart(){
    _mainAxisAlignment = MainAxisAlignment.start;
    return this;
  }
  AzRow mainCenter(){
    _mainAxisAlignment = MainAxisAlignment.center;
    return this;
  }
  AzRow mainEnd(){
    _mainAxisAlignment = MainAxisAlignment.end;
    return this;
  }

  AzRow mainSizeMax(){
    _mainAxisSize = MainAxisSize.max;
    return this;
  }
  AzRow mainSizeMin(){
    _mainAxisSize = MainAxisSize.min;
    return this;
  }

  AzRow textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }
  AzRow ltr(){
    _textDirection = TextDirection.ltr;
    return this;
  }
  AzRow rtl(){
    _textDirection = TextDirection.rtl;
    return this;
  }

  AzRow verticalDirection(VerticalDirection verticalDirection){
    _verticalDirection = verticalDirection;
    return this;
  }
  AzRow verticalDirectionUp(){
    _verticalDirection = VerticalDirection.up;
    return this;
  }
  AzRow verticalDirectionDown(){
    _verticalDirection = VerticalDirection.down;
    return this;
  }

  AzRow textBaseline(TextBaseline textBaseline){
    _textBaseline = textBaseline;
    return this;
  }
  AzRow alphabetic(){
    _textBaseline = TextBaseline.alphabetic;
    return this;
  }
  AzRow ideographic(){
    _textBaseline = TextBaseline.ideographic;
    return this;
  }

  toBuild() {
    return Row(
      key: key,
      children: children,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisAlignment: _mainAxisAlignment,
      mainAxisSize: _mainAxisSize,
      textDirection: _textDirection,
      verticalDirection: _verticalDirection,
      textBaseline: _textBaseline,
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