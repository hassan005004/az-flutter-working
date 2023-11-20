import 'dart:ui';
import 'positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'container.dart';
import 'gesture_detector.dart';
extension ExtPositioned on AzCenter {

}

class AzCenter extends StatelessWidget{
  Widget child;
  final Key? key;

  AzCenter(this.child, {this.key});

  toBuild() {
    return Center(
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget:this.toBuild());
  AzCard card() => AzCard(this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());

}