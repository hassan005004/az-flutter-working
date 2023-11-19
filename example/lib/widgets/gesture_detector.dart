import 'dart:ui';
import 'package:example/widgets/positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'container.dart';
// https://github.com/hassan005004/niku/blob/main/lib/extension/widget.dart
extension ExtGestureDetector on GestureDetector {
  // AzGestureDetector as() => AzGestureDetector(child ?? "")..onTap(onTap!);
  // AzContainer on() => AzContainer(widget: AzGestureDetector(child ?? ""));
  // AzContainer container() => AzContainer(widget: child);
}

class AzGestureDetector extends AzContainer{
  Widget? child;
  final Key? key;

  void Function(TapDownDetails)? _onTapDown;
  void Function(TapUpDetails)? _onTapUp;
  VoidCallback? _onTap;
  VoidCallback? _onTapCancel;
  VoidCallback? _onSecondaryTap;

  AzGestureDetector(this.child, {this.key});

  AzGestureDetector onTapDown(void Function(TapDownDetails)? callback){
    _onTapDown = callback;
    return this;
  }
  AzGestureDetector onTapUp(void Function(TapUpDetails)? callback){
    _onTapUp = callback;
    return this;
  }
  AzGestureDetector tap(VoidCallback? callback){
    _onTap = callback;
    return this;
  }
  AzGestureDetector onTapCancel(VoidCallback? callback){
    _onTapCancel = callback;
    return this;
  }
  AzGestureDetector onSecondaryTap(VoidCallback? callback){
    _onSecondaryTap = callback;
    return this;
  }

/*
  @override
  Widget build(context) => internalBuild(
    GestureDetector(
      child: child,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: _onTap,
      onTapCancel: _onTapCancel,
      onSecondaryTap: _onSecondaryTap,
      // onSecondaryTapDown: _onSecondaryTapDown,
      // onSecondaryTapUp: _onSecondaryTapUp,
      // onSecondaryTapCancel: _onSecondaryTapCancel,
      // onTertiaryTapDown: _onTertiaryTapDown,
      // onTertiaryTapUp: _onTertiaryTapUp,
      // onTertiaryTapCancel: _onTertiaryTapCancel,
      // onDoubleTapDown: _onDoubleTapDown,
      // onDoubleTap: _onDoubleTap,
      // onDoubleTapCancel: _onDoubleTapCancel,
      // onLongPressDown: _onLongPressDown,
      // onLongPressCancel: _onLongPressCancel,
      // onLongPress: _onLongPress,
      // onLongPressStart: _onLongPressStart,
      // onLongPressMoveUpdate: _onLongPressMoveUpdate,
      // onLongPressUp: _onLongPressUp,
      // onLongPressEnd: _onLongPressEnd,
      // onSecondaryLongPressDown: _onSecondaryLongPressDown,
      // onSecondaryLongPressCancel: _onSecondaryLongPressCancel,
      // onSecondaryLongPress: _onSecondaryLongPress,
      // onSecondaryLongPressStart: _onSecondaryLongPressStart,
      // onSecondaryLongPressMoveUpdate: _onSecondaryLongPressMoveUpdate,
      // onSecondaryLongPressUp: _onSecondaryLongPressUp,
      // onSecondaryLongPressEnd: _onSecondaryLongPressEnd,
      // onTertiaryLongPressDown: _onTertiaryLongPressDown,
      // onTertiaryLongPressCancel: _onTertiaryLongPressCancel,
      // onTertiaryLongPress: _onTertiaryLongPress,
      // onTertiaryLongPressStart: _onTertiaryLongPressStart,
      // onTertiaryLongPressMoveUpdate: _onTertiaryLongPressMoveUpdate,
      // onTertiaryLongPressUp: _onTertiaryLongPressUp,
      // onTertiaryLongPressEnd: _onTertiaryLongPressEnd,
      // onVerticalDragDown: _onVerticalDragDown,
      // onVerticalDragStart: _onVerticalDragStart,
      // onVerticalDragUpdate: _onVerticalDragUpdate,
      // onVerticalDragEnd: _onVerticalDragEnd,
      // onVerticalDragCancel: _onVerticalDragCancel,
      // onHorizontalDragDown: _onHorizontalDragDown,
      // onHorizontalDragStart: _onHorizontalDragStart,
      // onHorizontalDragUpdate: _onHorizontalDragUpdate,
      // onHorizontalDragEnd: _onHorizontalDragEnd,
      // onHorizontalDragCancel: _onHorizontalDragCancel,
      // onForcePressStart: _onForcePressStart,
      // onForcePressPeak: _onForcePressPeak,
      // onForcePressUpdate: _onForcePressUpdate,
      // onForcePressEnd: _onForcePressEnd,
      // onPanDown: _onPanDown,
      // onPanStart: _onPanStart,
      // onPanUpdate: _onPanUpdate,
      // onPanEnd: _onPanEnd,
      // onPanCancel: _onPanCancel,
      // onScaleStart: _onScaleStart,
      // onScaleUpdate: _onScaleUpdate,
      // onScaleEnd: _onScaleEnd,
      // behavior: _behavior,
      // excludeFromSemantics: _excludeFromSemantics,
      // dragStartBehavior: _dragStartBehavior,
      // trackpadScrollCausesScale: _trackpadScrollCausesScale,
      // trackpadScrollToScaleFactor: _trackpadScrollToScaleFactor,
      // supportedDevices: _supportedDevices,

      // void Function(TapDownDetails)? onTapDown,
      // void Function(TapUpDetails)? onTapUp,
      // void Function()? onTap,
      // void Function()? onTapCancel,
      // void Function()? onSecondaryTap,
      // void Function(TapDownDetails)? onSecondaryTapDown,
      // void Function(TapUpDetails)? onSecondaryTapUp,
      // void Function()? onSecondaryTapCancel,
      // void Function(TapDownDetails)? onTertiaryTapDown,
      // void Function(TapUpDetails)? onTertiaryTapUp,
      // void Function()? onTertiaryTapCancel,
      // void Function(TapDownDetails)? onDoubleTapDown,
      // void Function()? onDoubleTap,
      // void Function()? onDoubleTapCancel,
      // void Function(LongPressDownDetails)? onLongPressDown,
      // void Function()? onLongPressCancel,
      // void Function()? onLongPress,
      // void Function(LongPressStartDetails)? onLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onLongPressMoveUpdate,
      // void Function()? onLongPressUp,
      // void Function(LongPressEndDetails)? onLongPressEnd,
      // void Function(LongPressDownDetails)? onSecondaryLongPressDown,
      // void Function()? onSecondaryLongPressCancel,
      // void Function()? onSecondaryLongPress,
      // void Function(LongPressStartDetails)? onSecondaryLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onSecondaryLongPressMoveUpdate,
      // void Function()? onSecondaryLongPressUp,
      // void Function(LongPressEndDetails)? onSecondaryLongPressEnd,
      // void Function(LongPressDownDetails)? onTertiaryLongPressDown,
      // void Function()? onTertiaryLongPressCancel,
      // void Function()? onTertiaryLongPress,
      // void Function(LongPressStartDetails)? onTertiaryLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onTertiaryLongPressMoveUpdate,
      // void Function()? onTertiaryLongPressUp,
      // void Function(LongPressEndDetails)? onTertiaryLongPressEnd,
      // void Function(DragDownDetails)? onVerticalDragDown,
      // void Function(DragStartDetails)? onVerticalDragStart,
      // void Function(DragUpdateDetails)? onVerticalDragUpdate,
      // void Function(DragEndDetails)? onVerticalDragEnd,
      // void Function()? onVerticalDragCancel,
      // void Function(DragDownDetails)? onHorizontalDragDown,
      // void Function(DragStartDetails)? onHorizontalDragStart,
      // void Function(DragUpdateDetails)? onHorizontalDragUpdate,
      // void Function(DragEndDetails)? onHorizontalDragEnd,
      // void Function()? onHorizontalDragCancel,
      // void Function(ForcePressDetails)? onForcePressStart,
      // void Function(ForcePressDetails)? onForcePressPeak,
      // void Function(ForcePressDetails)? onForcePressUpdate,
      // void Function(ForcePressDetails)? onForcePressEnd,
      // void Function(DragDownDetails)? onPanDown,
      // void Function(DragStartDetails)? onPanStart,
      // void Function(DragUpdateDetails)? onPanUpdate,
      // void Function(DragEndDetails)? onPanEnd,
      // void Function()? onPanCancel,
      // void Function(ScaleStartDetails)? onScaleStart,
      // void Function(ScaleUpdateDetails)? onScaleUpdate,
      // void Function(ScaleEndDetails)? onScaleEnd,
      // HitTestBehavior? behavior,
      // bool excludeFromSemantics = false,
      // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      // bool trackpadScrollCausesScale = false,
      // Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
      // Set<PointerDeviceKind>? supportedDevices,
    ),
    key: key,
  );
*/



  toBuild() {
    return GestureDetector(
      child: child,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTap: _onTap,
      onTapCancel: _onTapCancel,
      onSecondaryTap: _onSecondaryTap,
      // onSecondaryTapDown: _onSecondaryTapDown,
      // onSecondaryTapUp: _onSecondaryTapUp,
      // onSecondaryTapCancel: _onSecondaryTapCancel,
      // onTertiaryTapDown: _onTertiaryTapDown,
      // onTertiaryTapUp: _onTertiaryTapUp,
      // onTertiaryTapCancel: _onTertiaryTapCancel,
      // onDoubleTapDown: _onDoubleTapDown,
      // onDoubleTap: _onDoubleTap,
      // onDoubleTapCancel: _onDoubleTapCancel,
      // onLongPressDown: _onLongPressDown,
      // onLongPressCancel: _onLongPressCancel,
      // onLongPress: _onLongPress,
      // onLongPressStart: _onLongPressStart,
      // onLongPressMoveUpdate: _onLongPressMoveUpdate,
      // onLongPressUp: _onLongPressUp,
      // onLongPressEnd: _onLongPressEnd,
      // onSecondaryLongPressDown: _onSecondaryLongPressDown,
      // onSecondaryLongPressCancel: _onSecondaryLongPressCancel,
      // onSecondaryLongPress: _onSecondaryLongPress,
      // onSecondaryLongPressStart: _onSecondaryLongPressStart,
      // onSecondaryLongPressMoveUpdate: _onSecondaryLongPressMoveUpdate,
      // onSecondaryLongPressUp: _onSecondaryLongPressUp,
      // onSecondaryLongPressEnd: _onSecondaryLongPressEnd,
      // onTertiaryLongPressDown: _onTertiaryLongPressDown,
      // onTertiaryLongPressCancel: _onTertiaryLongPressCancel,
      // onTertiaryLongPress: _onTertiaryLongPress,
      // onTertiaryLongPressStart: _onTertiaryLongPressStart,
      // onTertiaryLongPressMoveUpdate: _onTertiaryLongPressMoveUpdate,
      // onTertiaryLongPressUp: _onTertiaryLongPressUp,
      // onTertiaryLongPressEnd: _onTertiaryLongPressEnd,
      // onVerticalDragDown: _onVerticalDragDown,
      // onVerticalDragStart: _onVerticalDragStart,
      // onVerticalDragUpdate: _onVerticalDragUpdate,
      // onVerticalDragEnd: _onVerticalDragEnd,
      // onVerticalDragCancel: _onVerticalDragCancel,
      // onHorizontalDragDown: _onHorizontalDragDown,
      // onHorizontalDragStart: _onHorizontalDragStart,
      // onHorizontalDragUpdate: _onHorizontalDragUpdate,
      // onHorizontalDragEnd: _onHorizontalDragEnd,
      // onHorizontalDragCancel: _onHorizontalDragCancel,
      // onForcePressStart: _onForcePressStart,
      // onForcePressPeak: _onForcePressPeak,
      // onForcePressUpdate: _onForcePressUpdate,
      // onForcePressEnd: _onForcePressEnd,
      // onPanDown: _onPanDown,
      // onPanStart: _onPanStart,
      // onPanUpdate: _onPanUpdate,
      // onPanEnd: _onPanEnd,
      // onPanCancel: _onPanCancel,
      // onScaleStart: _onScaleStart,
      // onScaleUpdate: _onScaleUpdate,
      // onScaleEnd: _onScaleEnd,
      // behavior: _behavior,
      // excludeFromSemantics: _excludeFromSemantics,
      // dragStartBehavior: _dragStartBehavior,
      // trackpadScrollCausesScale: _trackpadScrollCausesScale,
      // trackpadScrollToScaleFactor: _trackpadScrollToScaleFactor,
      // supportedDevices: _supportedDevices,

      // void Function(TapDownDetails)? onTapDown,
      // void Function(TapUpDetails)? onTapUp,
      // void Function()? onTap,
      // void Function()? onTapCancel,
      // void Function()? onSecondaryTap,
      // void Function(TapDownDetails)? onSecondaryTapDown,
      // void Function(TapUpDetails)? onSecondaryTapUp,
      // void Function()? onSecondaryTapCancel,
      // void Function(TapDownDetails)? onTertiaryTapDown,
      // void Function(TapUpDetails)? onTertiaryTapUp,
      // void Function()? onTertiaryTapCancel,
      // void Function(TapDownDetails)? onDoubleTapDown,
      // void Function()? onDoubleTap,
      // void Function()? onDoubleTapCancel,
      // void Function(LongPressDownDetails)? onLongPressDown,
      // void Function()? onLongPressCancel,
      // void Function()? onLongPress,
      // void Function(LongPressStartDetails)? onLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onLongPressMoveUpdate,
      // void Function()? onLongPressUp,
      // void Function(LongPressEndDetails)? onLongPressEnd,
      // void Function(LongPressDownDetails)? onSecondaryLongPressDown,
      // void Function()? onSecondaryLongPressCancel,
      // void Function()? onSecondaryLongPress,
      // void Function(LongPressStartDetails)? onSecondaryLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onSecondaryLongPressMoveUpdate,
      // void Function()? onSecondaryLongPressUp,
      // void Function(LongPressEndDetails)? onSecondaryLongPressEnd,
      // void Function(LongPressDownDetails)? onTertiaryLongPressDown,
      // void Function()? onTertiaryLongPressCancel,
      // void Function()? onTertiaryLongPress,
      // void Function(LongPressStartDetails)? onTertiaryLongPressStart,
      // void Function(LongPressMoveUpdateDetails)? onTertiaryLongPressMoveUpdate,
      // void Function()? onTertiaryLongPressUp,
      // void Function(LongPressEndDetails)? onTertiaryLongPressEnd,
      // void Function(DragDownDetails)? onVerticalDragDown,
      // void Function(DragStartDetails)? onVerticalDragStart,
      // void Function(DragUpdateDetails)? onVerticalDragUpdate,
      // void Function(DragEndDetails)? onVerticalDragEnd,
      // void Function()? onVerticalDragCancel,
      // void Function(DragDownDetails)? onHorizontalDragDown,
      // void Function(DragStartDetails)? onHorizontalDragStart,
      // void Function(DragUpdateDetails)? onHorizontalDragUpdate,
      // void Function(DragEndDetails)? onHorizontalDragEnd,
      // void Function()? onHorizontalDragCancel,
      // void Function(ForcePressDetails)? onForcePressStart,
      // void Function(ForcePressDetails)? onForcePressPeak,
      // void Function(ForcePressDetails)? onForcePressUpdate,
      // void Function(ForcePressDetails)? onForcePressEnd,
      // void Function(DragDownDetails)? onPanDown,
      // void Function(DragStartDetails)? onPanStart,
      // void Function(DragUpdateDetails)? onPanUpdate,
      // void Function(DragEndDetails)? onPanEnd,
      // void Function()? onPanCancel,
      // void Function(ScaleStartDetails)? onScaleStart,
      // void Function(ScaleUpdateDetails)? onScaleUpdate,
      // void Function(ScaleEndDetails)? onScaleEnd,
      // HitTestBehavior? behavior,
      // bool excludeFromSemantics = false,
      // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      // bool trackpadScrollCausesScale = false,
      // Offset trackpadScrollToScaleFactor = kDefaultTrackpadScrollToScaleFactor,
      // Set<PointerDeviceKind>? supportedDevices,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());

  // AzContainer b() => AzContainer(
  //   child: Builder(
  //     builder: (context) => build(context),
  //   ),
  //   // key,
  // );


}