import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'ink_well.dart';
import 'responsive.dart';

// ignore: must_be_immutable
class AzListTile extends StatelessWidget{
  Widget? child;
  // final Key? key;

  Widget? _leading;
  Widget? _subtitle;
  Widget? _trailing;
  VoidCallback? _onTap;

  AzListTile(this.child, {Key? key}) : super(key: key);

  // AzListTile leading(Widget leading){
  //   _leading = leading;
  //   return this;
  // }

  AzListTile leading(Widget leading){
    _leading = leading;
    return this;
  }
  AzListTile subtitle(Widget subtitle){
    _subtitle = subtitle;
    return this;
  }
  AzListTile trailing(Widget trailing){
    _trailing = trailing;
    return this;
  }

  AzListTile onTap(VoidCallback? callback){
    _onTap = callback;
    return this;
  }


  toBuild() {
    return ListTile(
      key: key,
      leading: _leading,
      title: child,
      subtitle: _subtitle,
      trailing: _trailing,
      // bool isThreeLine = false,
      // bool? dense,
      // VisualDensity? visualDensity,
      // ShapeBorder? shape,
      // ListTileStyle? style,
      // Color? selectedColor,
      // Color? iconColor,
      // Color? textColor,
      // TextStyle? titleTextStyle,
      // TextStyle? subtitleTextStyle,
      // TextStyle? leadingAndTrailingTextStyle,
      // EdgeInsetsGeometry? contentPadding,
      // bool enabled = true,
      onTap: _onTap,// void Function()? onTap,
      // void Function()? onLongPress,
      // void Function(bool)? onFocusChange,
      // MouseCursor? mouseCursor,
      // bool selected = false,
      // Color? focusColor,
      // Color? hoverColor,
      // Color? splashColor,
      // FocusNode? focusNode,
      // bool autofocus = false,
      // Color? tileColor,
      // Color? selectedTileColor,
      // bool? enableFeedback,
      // double? horizontalTitleGap,
      // double? minVerticalPadding,
      // double? minLeadingWidth,
      // ListTileTitleAlignment? titleAlignment,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer toContainer() => AzContainer(widget: toBuild());
  AzResponsive toResponsive() => AzResponsive(toBuild());
  AzCard toCard() => AzCard(toBuild());
  AzCenter toCenter() => AzCenter(toBuild());
  AzGestureDetector toGestureDetector() => AzGestureDetector(toBuild());
  AzPositioned toPositioned() => AzPositioned(toBuild());
  AzInkWell toInkWell() => AzInkWell(toBuild());
}