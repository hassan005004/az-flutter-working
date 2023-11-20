// import 'dart:ui';
//
// // import 'package:ahc_visiting_patient_area/helpers/package/column.dart';
// import 'package:ahc_visiting_patient_area/helpers/package/constants.dart';
// // import 'package:ahc_visiting_patient_area/helpers/package/row.dart';
// // import 'package:ahc_visiting_patient_area/helpers/package/text.dart';
// import 'package:ahc_visiting_patient_area/helpers/package/widget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'container.dart';
// import 'helpers/HexColor.dart';
// // basically it is just for name in case of AzButton
// // not tested for extension output
// extension AzTextButtonBuilder on TextButton {
//   get data => null;
//   AzButton az() => AzButton(data ?? "");
// }
// extension AzOutlinedButtonBuilder on OutlinedButton {
//   get data => null;
//   AzButton az() => AzButton(data ?? "");
// }
// extension AzButtonBuilder on ElevatedButton {
//   get data => null;
//   AzButton az() => AzButton(data ?? "");
// }
//
// class AzButton extends AzContainer {
//   final String data;
//   // final Key key;
//
//   VoidCallback? _onPressed;
//   VoidCallback? _onLongPressed;
//   FocusNode? _focusNode;
//   Clip _clipBehavior = Clip.none;
//   bool _autofocus = false;
//
//   // testStyle
//   Color? _color;
//   // Color _backgroundColor;
//   FontWeight? _fontWeight;
//   FontStyle? _fontStyle;
//   double? _fontSize;
//   double? _letterSpacing;
//   double? _wordSpacing;
//   double? _height;
//   Paint? _foreground;
//   Paint? _background;
//   List<FontFeature>? _fontFeatures;
//   TextBaseline? _textBaseline;
//   TextDecoration? _textDecoration;
//   Color? _textDecorationColor;
//   double? _textDecorationThickness;
//   List<Shadow>? _shadows;
//   String? _fontFamily;
//   List<String>? _fontFamilyFallback;
//
//   MaterialStateProperty<Color>? _backgroundColor_btn;
//   MaterialStateProperty<Color>? _foregroundColor; // this is text color
//   MaterialStateProperty<Color>? _overlayColor; // is it hover color? yes by yasir + apply default theme overlay color
//   MaterialStateProperty<Color>? _shadowColor;
//   MaterialStateProperty<double>? _elevation;
//   MaterialStateProperty<EdgeInsetsGeometry>? _padding;
//   MaterialStateProperty<Size>? _minimumSize;
//   MaterialStateProperty<Size>? _fixedSize;
//
//   // borderStyle
//   Color _borderColor = Colors.transparent;
//   double _borderWidth = dBorderWidth;
//   BorderStyle _borderStyle = BorderStyle.solid;
//
//   MaterialStateProperty<RoundedRectangleBorder>? _rounded;
//   double _roundedTopLeft = 0;
//   double _roundedTopRight = 0;
//   double _roundedBottomLeft = 0;
//   double _roundedBottomRight = 0;
//
//   Alignment? _alignment;
//
//
//   int _isDisabled = 0;
//   int _isActive = 0;
//
//   AzButton(
//       this.data, {
//         Key? key,
//       });
//
//   AzButton onPressed(VoidCallback callback) {
//     _onPressed = callback;
//     return this;
//   }
//
//   AzButton onLongPressed(VoidCallback callback) {
//     _onLongPressed = callback;
//     return this;
//   }
//
//   AzButton focusNode(FocusNode focusNode) {
//     _focusNode = focusNode;
//     return this;
//   }
//
//   AzButton clipBehavior(Clip clipBehavior) {
//     _clipBehavior = clipBehavior;
//     return this;
//   }
//
//   AzButton clipBehaviorNone() {
//     _clipBehavior = Clip.none;
//     return this;
//   }
//
//   AzButton clipBehaviorHardEdge() {
//     _clipBehavior = Clip.hardEdge;
//     return this;
//   }
//
//   AzButton clipBehaviorAntiAliasWithSaveLayer() {
//     _clipBehavior = Clip.antiAliasWithSaveLayer;
//     return this;
//   }
//
//   AzButton clipBehaviorAntiAlias() {
//     _clipBehavior = Clip.antiAlias;
//     return this;
//   }
//
//   AzButton autofocus({bool autofocus = true}) {
//     _autofocus = autofocus;
//     return this;
//   }
//
//   // textStyle
//   // color
//   // AzButton text(String colorHexCode) {
//   //   _color = setOpacity(color(colorHexCode), _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textPrimary() {
//   //   _color = setOpacity(colorPrimary, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textSecondary() {
//   //   _color = setOpacity(colorSecondary, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textSuccess() {
//   //   _color = setOpacity(colorSuccess, _isActive, _isDisabled);
//   //   return this;
//   // }
//   // AzButton textDanger() {
//   //   _color = setOpacity(colorDanger, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textWarning() {
//   //   _color = setOpacity(colorWarning, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textInfo() {
//   //   _color = setOpacity(colorInfo, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textLight() {
//   //   _color = setOpacity(colorLight, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textDark() {
//   //   _color = setOpacity(colorDark, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textWhite() {
//   //   _color = setOpacity(colorWhite, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton textMute() {
//   //   _color = colorMute;
//   //   return this;
//   // }
//   //
//   // AzButton textLead() {
//   //   _color = colorLead;
//   //   return this;
//   // }
//
//   // background color
//   // AzButton bg(String colorHexCode) {
//   //   _backgroundColor = color(colorHexCode);
//   //   return this;
//   // }
//   //
//   // AzButton bgPrimary() {
//   //   _backgroundColor = setOpacity(colorPrimary, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgSecondary() {
//   //   _backgroundColor = setOpacity(colorSecondary, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgSuccess() {
//   //   _backgroundColor = setOpacity(colorSuccess, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgDanger() {
//   //   _backgroundColor = setOpacity(colorDanger, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgWarning() {
//   //   _backgroundColor = setOpacity(colorWarning, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgInfo() {
//   //   _backgroundColor = setOpacity(colorInfo, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgLight() {
//   //   _backgroundColor = setOpacity(colorLight, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgDark() {
//   //   _backgroundColor = setOpacity(colorDark, _isActive, _isDisabled);
//   //   return this;
//   // }
//   //
//   // AzButton bgWhite() {
//   //   _backgroundColor = setOpacity(colorWhite, _isActive, _isDisabled);
//   //   return this;
//   // }
//
//   // AzButton disabled(int is_disabled){
//   //   if(is_disabled == 1) {
//   //     _isDisabled = 1;
//   //   }
//   //   return this;
//   // }
//   //
//   // AzButton active(int is_active){
//   //   if(is_active == 1) {
//   //     _isActive = 1;
//   //   }
//   //   return this;
//   // }
//
//   // fontweight
//   AzButton fontWeight(FontWeight val) {
//     _fontWeight = val;
//     return this;
//   }
//
//   AzButton fontWeightBold() {
//     _fontWeight = FontWeight.bold;
//     return this;
//   }
//
//   AzButton fontWeightBolder() {
//     _fontWeight = FontWeight.w900;
//     return this;
//   }
//
//   AzButton fontWeightLight() {
//     _fontWeight = FontWeight.w300;
//     return this;
//   }
//
//   AzButton fontWeightLighter() {
//     _fontWeight = FontWeight.w100;
//     return this;
//   }
//
//   AzButton fontWeightNormal() {
//     _fontWeight = FontWeight.normal;
//     return this;
//   }
//
//   // font style
//   AzButton fontStyle(FontStyle val) {
//     _fontStyle = val;
//     return this;
//   }
//
//   AzButton fontItalic() {
//     _fontStyle = FontStyle.italic;
//     return this;
//   }
//
//   AzButton fontNormal() {
//     _fontStyle = FontStyle.normal;
//     return this;
//   }
//
//   // heading tags
//   // fontSize
//   AzButton fontSize(double fontSize){
//     _fontSize = fontSize;
//     return this;
//   }
//
//   AzButton h1() {
//     _fontSize = dH1;
//     return this;
//   }
//
//   AzButton h2() {
//     _fontSize = dH2;
//     return this;
//   }
//
//   AzButton h3() {
//     _fontSize = dH3;
//     return this;
//   }
//
//   AzButton h4() {
//     _fontSize = dH4;
//     return this;
//   }
//
//   AzButton h5() {
//     _fontSize = dH5;
//     return this;
//   }
//
//   AzButton h6() {
//     _fontSize = dH6;
//     return this;
//   }
//
//   AzButton display1() {
//     _fontSize = dDisplay1;
//     return this;
//   }
//
//   AzButton display2() {
//     _fontSize = dDisplay2;
//     return this;
//   }
//
//   AzButton display3() {
//     _fontSize = dDisplay3;
//     return this;
//   }
//
//   AzButton display4() {
//     _fontSize = dDisplay4;
//     return this;
//   }
//
//   AzButton letterSpacing(double val) {
//     _letterSpacing = val;
//     return this;
//   }
//
//   AzButton wordSpacing(double val) {
//     _wordSpacing = val;
//     return this;
//   }
//
//   AzButton height(double val) {
//     _height = val;
//     return this;
//   }
//
//   AzButton foreground(Paint val) {
//     // make paint to hex
//     _foreground = val;
//     return this;
//   }
//
//   AzButton background(Paint val) {
//     // make paint to hex
//     _background = val;
//     return this;
//   }
//
//   AzButton fontFeatures(List<FontFeature> val) {
//     _fontFeatures = val;
//     return this;
//   }
//
//   AzButton textBaseline(TextBaseline val) {
//     _textBaseline = val;
//     return this;
//   }
//
//   AzButton textDecoration(TextDecoration val) {
//     _textDecoration = val;
//     return this;
//   }
//
//   AzButton textDecorationColor(Color val) {
//     _textDecorationColor = val;
//     return this;
//   }
//
//   AzButton textDecorationThickness(double val) {
//     _textDecorationThickness = val;
//     return this;
//   }
//
//   AzButton shadows(List<Shadow> val) {
//     _shadows = val;
//     return this;
//   }
//
//   AzButton fontFamily(String val) {
//     _fontFamily = val;
//     return this;
//   }
//
//   AzButton fontFamilyFallback(List<String> val) {
//     _fontFamilyFallback = val;
//     return this;
//   }
//
//   AzButton backgroundColor(String hexCode) {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bg(String hexCode) {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgPrimary() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cPrimary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgSecondary() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSecondary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgSuccess() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSuccess), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgDanger() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDanger), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgWarning() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWarning), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgInfo() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cInfo), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgLight() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cLight), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgDark() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDark), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton bgWhite() {
//     _backgroundColor_btn = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWhite), _isActive, _isDisabled));
//     return this;
//   }
//
//   // this is text color
//   AzButton foregroundColor(String hexCode) {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fg(String hexCode) {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgPrimary() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cPrimary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgSecondary() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSecondary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgSuccess() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSuccess), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgDanger() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDanger), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgWarning() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWarning), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgInfo() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cInfo), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgLight() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cLight), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgDark() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDark), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton fgWhite() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWhite), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textColor(String hexCode) {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton text(String hexCode) {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textPrimary() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cPrimary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textSecondary() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSecondary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textSuccess() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSuccess), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textDanger() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDanger), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textWarning() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWarning), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textInfo() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cInfo), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textLight() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cLight), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textDark() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDark), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton textWhite() {
//     _foregroundColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWhite), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayColor(String hexColor) {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexColor), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlay(String hexCode) {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayPrimary() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cPrimary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlaySecondary() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSecondary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlaySuccess() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSuccess), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayDanger() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDanger), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayWarning() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWarning), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayInfo() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cInfo), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayLight() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cLight), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayDark() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDark), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton overlayWhite() {
//     _overlayColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWhite), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowColor(String hexColor) {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexColor), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadow(String hexCode) {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(hexCode), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowPrimary() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cPrimary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowSecondary() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSecondary), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowSuccess() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cSuccess), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowDanger() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDanger), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowWarning() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWarning), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowInfo() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cInfo), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowLight() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cLight), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowDark() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cDark), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton shadowWhite() {
//     _shadowColor = MaterialStateProperty.all<Color>(setOpacity(hexColor(cWhite), _isActive, _isDisabled));
//     return this;
//   }
//
//   AzButton elevation(double elevation) {
//     _elevation = MaterialStateProperty.all<double>(elevation);
//     return this;
//   }
//
//   AzButton padding(MaterialStateProperty<EdgeInsetsGeometry> padding) {
//     _padding = padding;
//     return this;
//   }
//
//   AzButton containerpadding(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.all(padding));
//     return this;
//   }
//
//   AzButton containerpaddingx(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: padding));
//     return this;
//   }
//
//   AzButton containerpaddingy(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.symmetric(vertical: padding));
//     return this;
//   }
//
//   AzButton containerpaddingt(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.only(top:padding));
//     return this;
//   }
//
//   AzButton pr(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.only(right:padding));
//     return this;
//   }
//
//   AzButton pb(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.only(bottom:padding));
//     return this;
//   }
//
//   AzButton containerpaddingl(double padding) {
//     _padding = MaterialStateProperty.all(EdgeInsets.only(left:padding));
//     return this;
//   }
//
//   AzButton minimumSize(double width, double height) {
//     _minimumSize = MaterialStateProperty.all(Size(width, height));
//     return this;
//   }
//
//   AzButton fixedSize(double width, double height) {
//     _fixedSize = MaterialStateProperty.all(Size(width, height));
//     return this;
//   }
//
//   AzButton borderWidth([double val = dBorderWidth]) {
//     // _borderWidth = _borderTopWidth = _borderRightWidth = _borderBottomWidth = _borderLeftWidth = val;
//     _borderWidth = val;
//     return this;
//   }
//
//   AzButton borderColor(String hexCode) {
//     // _borderColor = _borderTopColor = _borderRightColor = _borderBottomColor = _borderLeftColor = color(colorHexCode);
//     _borderColor = hexColor(hexCode);
//     return this;
//   }
//
//   AzButton border([String hexCode = cBorder]){
//     _borderColor = hexColor(hexCode);
//     return this;
//   }
//
//   AzButton borderPrimary(){
//     _borderColor = hexColor(cPrimary);
//     return this;
//   }
//
//   AzButton borderSecondary(){
//     _borderColor = hexColor(cSecondary);
//     return this;
//   }
//
//   AzButton borderSuccess(){
//     _borderColor = hexColor(cSuccess);
//     return this;
//   }
//
//   AzButton borderDanger(){
//     _borderColor = hexColor(cDanger);
//     return this;
//   }
//
//   AzButton borderWarning(){
//     _borderColor = hexColor(cWarning);
//     return this;
//   }
//
//   AzButton borderInfo(){
//     _borderColor = hexColor(cInfo);
//     return this;
//   }
//
//   AzButton borderLight(){
//     _borderColor = hexColor(cLight);
//     return this;
//   }
//
//   AzButton borderDark(){
//     _borderColor = hexColor(cDark);
//     return this;
//   }
//
//   AzButton borderStyle([BorderStyle borderStyle = BorderStyle.solid]){
//     _borderStyle = borderStyle;
//     return this;
//   }
//
//   AzButton borderStyleSolid(){
//     _borderStyle = BorderStyle.solid;
//     return this;
//   }
//
//   AzButton rounded([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedLg([double val = radiusLg]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedSm([double val = radiusSm]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedTop([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedTopLeft([double val = radius]) {
//     _roundedTopLeft = val;
//     _rounded = helperRounded();
//     return this;
//   }
//   AzButton roundedTopRight([double val = radius]) {
//     _roundedTopRight = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedRight([double val = radius]) {
//     _roundedTopRight = val;
//     _roundedBottomRight = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedBottom([double val = radius]) {
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedBottomLeft([double val = radius]) {
//     _roundedBottomLeft = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedBottomRight([double val = radius]) {
//     _roundedBottomRight = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton roundedLeft([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedBottomLeft = val;
//     _rounded = helperRounded();
//     return this;
//   }
//
//   AzButton alignment(Alignment alignment){
//     _alignment = alignment;
//     return this;
//   }
//
//   AzButton centerLeft(){
//     _alignment = Alignment.centerLeft;
//     return this;
//   }
//   AzButton centerCenter(){
//     _alignment = Alignment.center;
//     return this;
//   }
//   AzButton centerRight(){
//     _alignment = Alignment.centerRight;
//     return this;
//   }
//   AzButton topLeft(){
//     _alignment = Alignment.topLeft;
//     return this;
//   }
//   AzButton topCenter(){
//     _alignment = Alignment.topCenter;
//     return this;
//   }
//   AzButton alignmentTopRight(){
//     _alignment = Alignment.topRight;
//     return this;
//   }
//   AzButton alignmentBottomLeft(){
//     _alignment = Alignment.bottomLeft;
//     return this;
//   }
//   AzButton alignmentBotomCenter(){
//     _alignment = Alignment.bottomCenter;
//     return this;
//   }
//   AzButton alignmentBottomRight(){
//     _alignment = Alignment.bottomRight;
//     return this;
//   }
//
//
//   AzButton disabled(int is_disabled){
//     if(is_disabled == 1) {
//       _isDisabled = 1;
//     }
//     return this;
//   }
//
//   AzButton active(int is_active){
//     if(is_active == 1) {
//       _isActive = 1;
//     }
//     return this;
//   }
//
//   build(context) => internalBuild(
//       TextButton(
//         child: Text(data),
//         // Container(
//         //     child:Text(data),
//         //     decoration: BoxDecoration(
//         //       borderRadius: BorderRadius.all(Radius.circular(4)),
//         //       color: Colors.green[900],
//         //     ),
//         // ),
//         onPressed: _onPressed,
//         onLongPress: _onLongPressed,
//         focusNode: _focusNode,
//         autofocus: _autofocus,
//         clipBehavior: _clipBehavior,
//         style: ButtonStyle(
//           // {MaterialStateProperty<TextStyle> textStyle,
//           textStyle: MaterialStateProperty.all(TextStyle(
//             // color: _color, // unused because button has the feature
//             // backgroundColor: _backgroundColor, // unused because button has the feature
//             fontWeight: _fontWeight,
//             fontStyle: _fontStyle,
//             fontSize: _fontSize,
//             letterSpacing: _letterSpacing,
//             wordSpacing: _wordSpacing,
//             height: _height,
//             // leadingDistribution: _leadingDistribution,
//             // locale: _locale,
//             foreground: _foreground,
//             background: _background,
//             fontFeatures: _fontFeatures,
//             textBaseline: _textBaseline,
//             decoration: _textDecoration,
//             decorationColor: _textDecorationColor,
//             decorationThickness: _textDecorationThickness,
//             shadows: _shadows,
//             fontFamily: _fontFamily,
//             fontFamilyFallback: _fontFamilyFallback,
//           )),
//           backgroundColor: _backgroundColor_btn,
//           foregroundColor: _foregroundColor,
//           overlayColor: _overlayColor,
//           shadowColor: _shadowColor,
//           elevation: _elevation,
//           padding: _padding,
//           minimumSize: _minimumSize,
//           fixedSize: _fixedSize,
//           side: MaterialStateProperty.all(BorderSide(
//             color: _borderColor,
//             width: _borderWidth,
//             style: _borderStyle,
//           )),
//           shape: _rounded,
//           // MaterialStateProperty<OutlinedBorder> shape, // OutlinedBorder is abstract class. i think type of button
//           // mouseCursor: _mouseCursor,
//           // MaterialStateProperty<MouseCursor> mouseCursor,
//           // visualDensity: _visualDensity,
//           // VisualDensity visualDensity,
//           // tapTargetSize: _tapTargetSize,
//           // MaterialTapTargetSize tapTargetSize,
//           // animationDuration: _animationDuration,
//           // Duration animationDuration,
//           // enableFeedback: _enableFeedback,
//           // bool enableFeedback,
//           alignment: _alignment,
//           // AlignmentGeometry alignment,
//           // splashFactory: _splashFactory,
//           // InteractiveInkFeatureFactory splashFactory}
//         ),
//       )
//   );
//
//   Az method() => Az(
//     Builder(
//       builder: (context) => build(context),
//     ),
//     key,
//   );
//
//   helperRounded(){
//     return MaterialStateProperty.all(
//       RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft:Radius.circular(_roundedTopLeft),
//             topRight:Radius.circular(_roundedTopRight),
//             bottomRight:Radius.circular(_roundedBottomLeft),
//             bottomLeft:Radius.circular(_roundedBottomRight),
//           )
//       ),
//     );
//
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.only(
//         topLeft:Radius.circular(_roundedTopLeft),
//         topRight:Radius.circular(_roundedTopRight),
//         bottomRight:Radius.circular(_roundedBottomLeft),
//         bottomLeft:Radius.circular(_roundedBottomRight),
//       ),
//       borderSide: BorderSide(color: _borderColor, width: _borderWidth),
//     );
//   }
// }
//
// class AzButtonGroupVertical extends AzContainer {
//   final List<Widget> widget;
//   // final Key key;
//
//   AzButtonGroupVertical(
//       this.widget, {
//         Key? key,
//       });
//   build(context) => internalBuild(
//       TextButton(
//         child: Wrap(
//             direction: Axis.vertical,
//             children:widget
//         ),
//         onPressed: () {
//           // log(‘Text button clicked’);
//         },
//       )
//   );
//   Az method() => Az(
//     Builder(
//       builder: (context) => build(context),
//     ),
//     key,
//   );
// }