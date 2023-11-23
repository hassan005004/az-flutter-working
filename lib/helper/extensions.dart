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
  AzCard azCard() => AzCard(child);
}

extension ExtCenter on Center {
  AzCenter azCenter() => AzCenter(child);
}

extension ExtColumn on Column {
  AzColumn azColumn() => AzColumn(children);
}

extension ExtAzContainer on Container {
  AzContainer azContainer() => AzContainer(widget: this);
}

extension ExtAzInkWell on Container {
  AzInkWell azInkWell() => AzInkWell(child);
}

extension ExtGestureDetector on GestureDetector {
  AzGestureDetector azGestureDetector() => AzGestureDetector(child);
}

extension ExtIcon on Icon {
  AzIcon azIcon() => AzIcon(icon);
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
  AzRow azRow() => AzRow(children);
}

extension ExtStack on Stack {
  AzStack azStack() => AzStack(children);
}

extension ExtText on Text {
  AzText azText() => AzText(data ?? "");
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