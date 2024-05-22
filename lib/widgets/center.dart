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
  double? _widthFactor;
  double? _heightFactor;

  // final Key? key;

  AzCenter(this.child, {Key? key}) : super(key: key);
  AzCenter internalUseOfAz({
    widthFactor,
    heightFactor,
  }){
    _widthFactor = widthFactor;
    _heightFactor = heightFactor;
    return this;
  }

  AzCenter hf(double dobule){
    _heightFactor = dobule;
    return this;
  }

  AzCenter wf(double dobule){
    _widthFactor = dobule;
    return this;
  }

  toBuild() {
    return Center(
      widthFactor: _widthFactor,
      heightFactor: _heightFactor,
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