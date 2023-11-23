import 'positioned.dart';
import 'package:flutter/material.dart';

import '../helper/hex_color.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
import 'ink_well.dart';
import 'responsive.dart';

// ignore: must_be_immutable
class AzRadioListTile extends StatelessWidget {
  // final String _title;
  // final Key key;
  dynamic _value = 0;
  dynamic _groupValue = 0;
  dynamic _onChanged;
  bool _toggleable = false;
  Color? _activeColor;
  Widget? _title;
  Widget? _subtitle;
  bool _isThreeLine = false;
  bool? _dense;
  Widget? _secondary;
  bool _selected = false;
  ListTileControlAffinity _controlAffinity = ListTileControlAffinity.platform;
  bool _autofocus = false;
  EdgeInsetsGeometry? _contentPadding;
  ShapeBorder? _shape;
  Color? _tileColor;
  Color? _selectedTileColor;

  // all default property has been added as method. does they need?

  AzRadioListTile value(dynamic value){
    _value = value;
    return this;
  }

  AzRadioListTile groupValue(dynamic groupValue){
    _groupValue = groupValue;
    return this;
  }

  AzRadioListTile onChanged(dynamic onChanged){
    _onChanged = onChanged;
    return this;
  }

  AzRadioListTile toggleable([bool toggleable = false]){
    _toggleable = toggleable;
    return this;
  }

  AzRadioListTile activeColor(String hexColor_){//make it hex color code
    _activeColor = hexColor(hexColor_);
    return this;
  }

  AzRadioListTile title(Widget title){
    _title = title;
    return this;
  }

  AzRadioListTile subtitle(Widget subtitle){
    _subtitle = subtitle;
    return this;
  }

  AzRadioListTile isThreeLine([bool isThreeLine = false]){
    _isThreeLine = isThreeLine;
    return this;
  }

  AzRadioListTile dense(bool dense){
    _dense = dense;
    return this;
  }

  AzRadioListTile secondary(Widget secondary){
    _secondary = secondary;
    return this;
  }

  AzRadioListTile selected([bool selected = false]){
    _selected = selected;
    return this;
  }

  AzRadioListTile controlAffinity(ListTileControlAffinity controlAffinity){
    _controlAffinity = controlAffinity;
    return this;
  }

  AzRadioListTile controlAffinityLeading(){
    _controlAffinity = ListTileControlAffinity.leading;
    return this;
  }

  AzRadioListTile controlAffinityPlatform(){
    _controlAffinity = ListTileControlAffinity.platform;
    return this;
  }

  AzRadioListTile controlAffinityTrailing(){
    _controlAffinity = ListTileControlAffinity.trailing;
    return this;
  }

  AzRadioListTile autofocus([bool autofocus = false]){
    _autofocus = autofocus;
    return this;
  }

  AzRadioListTile contentPadding(EdgeInsetsGeometry contentPadding){
    _contentPadding = contentPadding;
    return this;
  }

  AzRadioListTile shape(ShapeBorder shape){
    _shape = shape;
    return this;
  }

  AzRadioListTile tileColor(String hexCode){
    _tileColor = hexColor(hexCode);
    return this;
  }

  AzRadioListTile selectedTileColor(String hexCode){
    _selectedTileColor = hexColor(hexCode);
    return this;
  }


  AzRadioListTile({
    Key? key,
  }) : super(key: key);

  toBuild(){
    return RadioListTile(
      key: key,
      value: _value,
      groupValue: _groupValue,
      onChanged: _onChanged,
      toggleable: _toggleable,
      activeColor: _activeColor,
      title: _title,
      subtitle: _subtitle,
      isThreeLine: _isThreeLine,
      dense: _dense,
      secondary: _secondary,
      selected: _selected,
      controlAffinity: _controlAffinity,
      autofocus: _autofocus,
      contentPadding: _contentPadding,
      shape: _shape,
      tileColor: _tileColor,
      selectedTileColor: _selectedTileColor
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