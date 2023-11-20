import 'card.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';

extension ExtPositioned on AzCenter {

}
// ignore: must_be_immutable
class AzCenter extends StatelessWidget{
  Widget child;

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

  AzContainer container() => AzContainer(widget:toBuild());
  AzCard card() => AzCard(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());

}