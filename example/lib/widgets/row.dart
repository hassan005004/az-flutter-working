import 'dart:ui';
import 'package:example/widgets/positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container.dart';
import 'gesture_detector.dart';
extension ExtRow on AzRow {

}

class AzRow extends AzContainer{
  List<Widget> children;
  final Key? key;

  AzRow(this.children, {this.key});

  toBuild() {
    return Row(
      key: key,
      children: children,
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