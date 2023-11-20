import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtWrap on Wrap {
  AzWrap azWrap() => AzWrap(children);
}

// ignore: must_be_immutable
class AzWrap extends StatelessWidget {
  // @override
  // final Key? key;

  final List<Widget> children;
  // final GlobalKey key = GlobalKey();
  Axis _direction = Axis.horizontal;
  WrapAlignment _alignment = WrapAlignment.start;
  double _spacing = 0.0;
  WrapAlignment _runAlignment = WrapAlignment.start;
  double _runSpacing = 0.0;
  WrapCrossAlignment _crossAxisAlignment = WrapCrossAlignment.start;
  TextDirection? _textDirection;
  VerticalDirection _verticalDirection = VerticalDirection.down;
  Clip _clipBehavior = Clip.none;

  AzWrap(
      this.children, {
        Key? key,
      }) : super(key: key);

  AzWrap axis(Axis direction){
    _direction = direction;
    return this;
  }
  AzWrap axisHorizontal(){
    _direction = Axis.horizontal;
    return this;
  }
  AzWrap axisVertical(){
    _direction = Axis.vertical;
    return this;
  }

  AzWrap wrapAlignment(WrapAlignment wrapAlignment){
    _alignment = wrapAlignment;
    return this;
  }
  AzWrap wrapAlignmentCenter(){
    _alignment = WrapAlignment.center;
    return this;
  }
  AzWrap wrapAlignmentStart(){
    _alignment = WrapAlignment.start;
    return this;
  }
  AzWrap wrapAlignmentEnd(){
    _alignment = WrapAlignment.end;
    return this;
  }
  AzWrap wrapAlignmentSpaceBetween(){
    _alignment = WrapAlignment.spaceBetween;
    return this;
  }
  AzWrap wrapAlignmentSpaceAround(){
    _alignment = WrapAlignment.spaceAround;
    return this;
  }
  AzWrap wrapAlignmentSpaceEvenly(){
    _alignment = WrapAlignment.spaceEvenly;
    return this;
  }

  AzWrap spacing(double double){
    _spacing = double;
    return this;
  }

  AzWrap runAlignment(WrapAlignment wrapAlignment){
    _runAlignment = wrapAlignment;
    return this;
  }
  AzWrap runAlignmentCenter(){
    _runAlignment = WrapAlignment.center;
    return this;
  }
  AzWrap runAlignmentStart(){
    _runAlignment = WrapAlignment.start;
    return this;
  }
  AzWrap runAlignmentEnd(){
    _runAlignment = WrapAlignment.end;
    return this;
  }
  AzWrap runAlignmentSpaceEvenly(){
    _runAlignment = WrapAlignment.spaceEvenly;
    return this;
  }
  AzWrap runAlignmentSpaceAround(){
    _runAlignment = WrapAlignment.spaceAround;
    return this;
  }
  AzWrap runAlignmentBetween(){
    _runAlignment = WrapAlignment.spaceBetween;
    return this;
  }

  AzWrap runSpacing(double double){
    _runSpacing = double;
    return this;
  }

  AzWrap crossAxisAlignment(WrapCrossAlignment wrapCrossAlignment){
    _crossAxisAlignment = wrapCrossAlignment;
    return this;
  }
  AzWrap crossCenter(){
    _crossAxisAlignment = WrapCrossAlignment.center;
    return this;
  }
  AzWrap crossStart(){
    _crossAxisAlignment = WrapCrossAlignment.start;
    return this;
  }
  AzWrap crossEnd(){
    _crossAxisAlignment = WrapCrossAlignment.end;
    return this;
  }

  AzWrap textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }
  AzWrap ltr(){
    _textDirection = TextDirection.ltr;
    return this;
  }
  AzWrap rtl(){
    _textDirection = TextDirection.rtl;
    return this;
  }

  AzWrap verticalDirection(VerticalDirection verticalDirection){
    _verticalDirection = verticalDirection;
    return this;
  }
  AzWrap up(){
    _verticalDirection = VerticalDirection.up;
    return this;
  }
  AzWrap down(){
    _verticalDirection = VerticalDirection.down;
    return this;
  }

  AzWrap clipBehavior(Clip clip){
    _clipBehavior = clip;
    return this;
  }
  AzWrap clipNone(){
    _clipBehavior = Clip.none;
    return this;
  }
  AzWrap clipAntiAlias(){
    _clipBehavior = Clip.antiAlias;
    return this;
  }
  AzWrap clipAntiAliasWithSaveLayer(){
    _clipBehavior = Clip.antiAliasWithSaveLayer;
    return this;
  }
  AzWrap clipHardEdge(){
    _clipBehavior = Clip.hardEdge;
    return this;
  }

  toBuild() {
    return Wrap(
      key: key,
      direction: _direction,
      alignment: _alignment,
      spacing: _spacing,
      runAlignment: _runAlignment,
      runSpacing: _runSpacing,
      crossAxisAlignment: _crossAxisAlignment,
      textDirection:  _textDirection,
      verticalDirection: _verticalDirection,
      clipBehavior: _clipBehavior,
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: toBuild());
  AzCard card() => AzCard(toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());

}