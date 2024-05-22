import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/center.dart';
import '../widgets/card.dart';
import '../widgets/column.dart';
import '../widgets/container.dart';
import '../widgets/gesture_detector.dart';
import '../widgets/icon.dart';
import '../widgets/image.dart';
import '../widgets/ink_well.dart';
import '../widgets/list_tile.dart';
import '../widgets/positioned.dart';
import '../widgets/radio_list_tile.dart';
import '../widgets/row.dart';
import '../widgets/stack.dart';
import '../widgets/text.dart';
import '../widgets/text_form_filed.dart';
import '../widgets/wrap.dart';

extension ExtTextButton on TextButton {
  AzButton azButton() => AzButton(child);
}
extension ExtElevatedButtonButton on ElevatedButton {
  AzButton azButton() => AzButton(child);
}
// extension ExtFloatingActionButtonButton on FloatingActionButton {
//
// }
extension ExtOutlinedButtonButton on OutlinedButton {
  AzButton azButton() => AzButton(child);
}
// extension ExtIconButtonButton on IconButton {
//
// }

extension ExtCard on Card {
  AzCard azCard() => AzCard(child).internalUseOfAz(
      color: color,
      shadowColor: shadowColor,
      elevation: elevation,
      shape: shape,
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      semanticContainer: semanticContainer,
  );
}

extension ExtCenter on Center {
  AzCenter azCenter() => AzCenter(child).internalUseOfAz(
    widthFactor: widthFactor,
    heightFactor: heightFactor,
  );
}

extension ExtColumn on Column {
  AzColumn azColumn() => AzColumn(children).internalUseOfAz(
    thisMainAxisAlignment: mainAxisAlignment,
    thisCrossAxisAlignment: crossAxisAlignment,
    thisTextDirection: textDirection,
    thisVerticalDirection: verticalDirection,
    thisTextBaseline: textBaseline,
  );
}

extension ExtAzContainer on Container {
  AzContainer azContainer() => AzContainer(widget: this).internalUseOfAz(
    alignment: alignment,
    padding: padding,
    color: color,
    decoration: decoration,
    foregroundDecoration: foregroundDecoration,
    // width: width,
    // height: height,
    constraints: constraints,
    margin: margin,
    transform: transform,
    transformAlignment: transformAlignment,
    clipBehavior: clipBehavior,
  );
}

extension ExtAzInkWell on InkWell {
  AzInkWell azInkWell() => AzInkWell(child).internalUseOfAz(
    thisOnTap: onTap,
    // void Function()? onDoubleTap,
    // void Function()? onLongPress,
    // void Function(TapDownDetails)? onTapDown,
    // void Function(TapUpDetails)? onTapUp,
    // void Function()? onTapCancel,
    // void Function()? onSecondaryTap,
    // void Function(TapUpDetails)? onSecondaryTapUp,
    // void Function(TapDownDetails)? onSecondaryTapDown,
    // void Function()? onSecondaryTapCancel,
    // void Function(bool)? onHighlightChanged,
    // void Function(bool)? onHover,
    // MouseCursor? mouseCursor,
    // Color? focusColor,
    // Color? hoverColor,
    // Color? highlightColor,
    // MaterialStateProperty<Color?>? overlayColor,
    // Color? splashColor,
    // InteractiveInkFeatureFactory? splashFactory,
    // double? radius,
    thisBorderRadius: borderRadius,
    // ShapeBorder? customBorder,
    // bool? enableFeedback = true,
    // bool excludeFromSemantics = false,
    // FocusNode? focusNode,
    // bool canRequestFocus = true,
    // void Function(bool)? onFocusChange,
    // bool autofocus = false,
    // MaterialStatesController? statesController,
  );
}

extension ExtGestureDetector on GestureDetector {
  AzGestureDetector azGestureDetector() => AzGestureDetector(child);
}

extension ExtIcon on Icon {
  AzIcon azIcon() => AzIcon(icon).internalUseOfAz(
    size: size,
    // fill,
    // weight,
    // grade,
    // opticalSize,
    color: color,
    // shadows,
    semanticLabel: semanticLabel,
    textDirection: textDirection,
  );
}

extension ExtAssetImage on AssetImage {
  AzImage azAssetImage() => AzImage();
}
extension ExtINetworkImage on NetworkImage {
  AzImage azNetworkImage() => AzImage();
}


extension ExtListTile on ListTile {
  AzListTile azListTile() => AzListTile(title);
}

extension ExtPositioned on Positioned {
  AzPositioned azPositioned() => AzPositioned(child);
}

extension AzRadioBuilder on RadioListTile {
  AzRadioListTile azRadioListTile() => AzRadioListTile();
}

extension ExtRow on Row {
  AzRow azRow() => AzRow(children).internalUseOfAz(
    thisMainAxisAlignment: mainAxisAlignment,
    thisCrossAxisAlignment: crossAxisAlignment,
    thisTextDirection: textDirection,
    thisVerticalDirection: verticalDirection,
    thisTextBaseline: textBaseline,
  );
}

extension ExtStack on Stack {
  AzStack azStack() => AzStack(children);
}

extension ExtText on Text {
  AzText azText() {
    return AzText(data ?? "").internalUseOfAz(
      thisStyle: style,
      thisStrutStyle: strutStyle,
      thisTextAlign: textAlign,
      thisTextDirection: textDirection,
      thisLocale: locale,
      thisSoftWrap: softWrap,
      thisOverflow: overflow,
      thisTextScaler: textScaleFactor,
      thisMaxLines: maxLines,
      thisSemanticsLabel: semanticsLabel,
      thisTextWidthBasis: textWidthBasis,
      thisTextHeightBehavior: textHeightBehavior,
      thisSelectionColor: selectionColor,
    );
  }
}

extension ExtTextFormFiled on TextFormField {
  AzTextFormField azTextFormField() => AzTextFormField();
}

extension ExtWrap on Wrap {
  AzWrap azWrap() => AzWrap(children);
}

extension ExtString on String {
  Color fromHex() {
    String hexColor = this;//.toString();
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
    return Color(int.parse("0xFF000000"));
  }
}

extension ExtDouble on double {
  double toPrecision(n) {
    String d = this.toStringAsFixed(n);
    return double.parse(d);
  }
}

