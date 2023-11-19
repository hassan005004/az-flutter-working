import 'dart:ui';
import 'package:example/widgets/positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'gesture_detector.dart';
extension ExtColumn on AzColumn {

}

class AzColumn extends AzContainer{
  List<Widget> children;
  final Key? key;

  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;

  AzColumn(this.children, {this.key});

  crossStart(){
    _crossAxisAlignment = CrossAxisAlignment.start;
    return this;
  }

  toBuild() {
    return Column(
      key: key,
      children: children,
      crossAxisAlignment: _crossAxisAlignment,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());

}