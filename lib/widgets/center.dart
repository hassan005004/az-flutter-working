import 'card.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';
import 'ink_well.dart';
import 'responsive.dart';

// ignore: must_be_immutable
class AzCenter extends StatelessWidget{
  Widget? child;
  // final Key? key;

  AzCenter(this.child, {Key? key}) : super(key: key);

  toBuild() {
    return Center(
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer toContainer() => AzContainer(widget:toBuild());
  AzResponsive toResponsive() => AzResponsive(toBuild());
  AzCard toCard() => AzCard(toBuild());
  AzGestureDetector toGestureDetector() => AzGestureDetector(toBuild());
  AzPositioned toPositioned() => AzPositioned(toBuild());
  AzInkWell toInkWell() => AzInkWell(toBuild());

}