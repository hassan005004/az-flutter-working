import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtStack on Stack {
  AzStack azStack() => AzStack(children);
}

// ignore: must_be_immutable
class AzStack extends StatelessWidget {
  final List<Widget> children;
  AlignmentGeometry _alignment = AlignmentDirectional.topStart;
  TextDirection? _textDirection;
  StackFit _fit = StackFit.loose;
  // Overflow _overflow = Overflow.clip;
  Clip _clipBehavior = Clip.hardEdge;

  AzStack(
    this.children, {
      Key? key,
    }) : super(key: key);

  AzStack alignmentDirectional(AlignmentDirectional alignmentDirectional){
    _alignment = alignmentDirectional;
    return this;
  }
  AzStack topStart(){
    _alignment = AlignmentDirectional.topStart;
    return this;
  }
  AzStack topCenter(){
    _alignment = AlignmentDirectional.topCenter;
    return this;
  }
  AzStack topEnd(){
    _alignment = AlignmentDirectional.topEnd;
    return this;
  }
  AzStack centerStart(){
    _alignment = AlignmentDirectional.centerStart;
    return this;
  }
  AzStack centerCenter(){
    _alignment = AlignmentDirectional.center;
    return this;
  }
  AzStack centerEnd(){
    _alignment = AlignmentDirectional.centerEnd;
    return this;
  }
  AzStack bottomStart(){
    _alignment = AlignmentDirectional.bottomStart;
    return this;
  }
  AzStack bottomCenter(){
    _alignment = AlignmentDirectional.bottomCenter;
    return this;
  }
  AzStack bottomEnd(){
    _alignment = AlignmentDirectional.bottomEnd;
    return this;
  }

  AzStack textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }
  AzStack ltr(){
    _textDirection = TextDirection.ltr;
    return this;
  }
  AzStack rtl(){
    _textDirection = TextDirection.rtl;
    return this;
  }

  AzStack stackFit(StackFit stackFit){
    _fit = stackFit;
    return this;
  }
  AzStack stackFitExpand(){
    _fit = StackFit.expand;
    return this;
  }
  AzStack stackFitLoose(){
    _fit = StackFit.loose;
    return this;
  }
  AzStack stackFitPassThrough(){
    _fit = StackFit.passthrough;
    return this;
  }


  AzStack clipBehavior(Clip clip){
    _clipBehavior = clip;
    return this;
  }
  AzStack clipNone(){
    _clipBehavior = Clip.none;
    return this;
  }
  AzStack clipAntiAlias(){
    _clipBehavior = Clip.antiAlias;
    return this;
  }
  AzStack clipAntiAliasWithSaveLayer(){
    _clipBehavior = Clip.antiAliasWithSaveLayer;
    return this;
  }
  AzStack clipHardEdge(){
    _clipBehavior = Clip.hardEdge;
    return this;
  }


  toBuild() {
    return Stack(
      key: key,
      alignment: _alignment,
      textDirection: _textDirection,
      fit: _fit,
      // overflow: _overflow,
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