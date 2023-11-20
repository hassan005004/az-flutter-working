// import 'package:ahc_visiting_patient_area/helpers/package/constants.dart';
// import 'package:ahc_visiting_patient_area/helpers/package/widget.dart';
// import 'package:flutter/material.dart';
// import 'dart:ui';
// import 'container.dart';
// import 'helpers/HexColor.dart';
// import 'helpers/Responsive.dart';
// import 'helpers/ResponsiveText.dart';
// import 'widget.dart';
// // import 'extension.dart';
//
// // extension AzTextStyleBuilder on TextStyle {
// //   AzTextStyle az() => AzTextStyle(data ?? "");
// // }
//
// class AzTextStyle extends AzContainer {
//   // final String data;
//   // final Key key;
//   Locale? _locale;
//   TextAlign? _textAlign;
//   TextDirection? _textDirection;
//   bool? _softWrap;
//   TextOverflow? _overflow;
//   double? _textScaleFactor;
//   int? _maxLines;
//   String? _semanticsLabel;
//   TextWidthBasis? _textWidthBasis;
//   TextHeightBehavior? _textHeightBehavior;
//
//   // textStyle
//   Color? _color;
//   Color? _backgroundColor;
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
//   int _isDisabled = 0;
//   int _isActive = 0;
//
//   AzTextStyle({
//     Key? key,
//   });
//   // AzTextStyle(
//   //     this.data, {
//   //       Key? key,
//   //     });
//
//   AzTextStyle locale(Locale val) {
//     _locale = val;
//     return this;
//   }
//
//   // text aligment
//   AzTextStyle textLeft() {
//     _textAlign = TextAlign.left;
//     return this;
//   }
//
//   AzTextStyle textMediaLeft(BuildContext context, String? val) {
//     if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.left;
//       return this;
//     }
//     if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.left;
//       return this;
//     }
//     if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
//       _textAlign = TextAlign.left;
//       return this;
//     }
//     if(val == 'xl' && Responsive.xl(context)){
//       _textAlign = TextAlign.left;
//       return this;
//     }
//     return this;
//   }
//
//   AzTextStyle textCenter() {
//     _textAlign = TextAlign.center;
//     return this;
//   }
//
//   AzTextStyle textMediaCenter(BuildContext context, String val) {
//     if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.center;
//       return this;
//     }
//     if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.center;
//       return this;
//     }
//     if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
//       _textAlign = TextAlign.center;
//       return this;
//     }
//     if(val == 'xl' && Responsive.xl(context)){
//       _textAlign = TextAlign.center;
//       return this;
//     }
//     return this;
//   }
//
//   AzTextStyle textRight() {
//     _textAlign = TextAlign.right;
//     return this;
//   }
//
//   AzTextStyle textMediaRight(BuildContext context, String val) {
//     if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.right;
//       return this;
//     }
//     if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.right;
//       return this;
//     }
//     if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
//       _textAlign = TextAlign.right;
//       return this;
//     }
//     if(val == 'xl' && Responsive.xl(context)){
//       _textAlign = TextAlign.right;
//       return this;
//     }
//     return this;
//   }
//
//   AzTextStyle textStart() {
//     _textAlign = TextAlign.start;
//     return this;
//   }
//
//   AzTextStyle textMediaStart(BuildContext context, String val) {
//     if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.start;
//       return this;
//     }
//     if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.start;
//       return this;
//     }
//     if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
//       _textAlign = TextAlign.start;
//       return this;
//     }
//     if(val == 'xl' && Responsive.xl(context)){
//       _textAlign = TextAlign.start;
//       return this;
//     }
//     return this;
//   }
//
//   AzTextStyle textEnd() {
//     _textAlign = TextAlign.end;
//     return this;
//   }
//
//   AzTextStyle textMediaEnd(BuildContext context, String val) {
//     if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.end;
//       return this;
//     }
//     if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       _textAlign = TextAlign.end;
//       return this;
//     }
//     if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
//       _textAlign = TextAlign.end;
//       return this;
//     }
//     if(val == 'xl' && Responsive.xl(context)){
//       _textAlign = TextAlign.end;
//       return this;
//     }
//     return this;
//   }
//
//   AzTextStyle textJustify() {
//     _textAlign = TextAlign.justify;
//     return this;
//   }
//
//   // AzTextStyle toUppercase(){
//   //   data ?? data.toUpperCase();
//   // }
//
//   AzTextStyle textDirection(TextDirection val) {
//     _textDirection = val;
//     return this;
//   }
//
//   AzTextStyle ltr() {
//     _textDirection = TextDirection.ltr;
//     return this;
//   }
//
//   AzTextStyle rtl() {
//     _textDirection = TextDirection.rtl;
//     return this;
//   }
//
//   AzTextStyle softWrap(bool val) {
//     _softWrap = val;
//     return this;
//   }
//
//   AzTextStyle overflow(TextOverflow val) {
//     _overflow = val;
//     return this;
//   }
//
//   AzTextStyle overflowClip() {
//     _overflow = TextOverflow.clip;
//     return this;
//   }
//
//   AzTextStyle overflowEllipsis() {
//     _overflow = TextOverflow.ellipsis;
//     return this;
//   }
//
//   AzTextStyle overflowFade() {
//     _overflow = TextOverflow.fade;
//     return this;
//   }
//
//   AzTextStyle overflowVisible() {
//     _overflow = TextOverflow.visible;
//     return this;
//   }
//
//   AzTextStyle textScaleFactor(double val) {
//     _textScaleFactor = val;
//     return this;
//   }
//
//   AzTextStyle maxLines(int val) {
//     _maxLines = val;
//     return this;
//   }
//
//   AzTextStyle label(String val) {
//     _semanticsLabel = val;
//     return this;
//   }
//
//   AzTextStyle semanticsLabel(String val) {
//     _semanticsLabel = val;
//     return this;
//   }
//
//   AzTextStyle textWidthBasis(TextWidthBasis val) {
//     _textWidthBasis = val;
//     return this;
//   }
//
//   AzTextStyle textHeightBehavior(TextHeightBehavior val) {
//     _textHeightBehavior = val;
//     return this;
//   }
//
//   // color
//   AzTextStyle textColor(String colorHexCode) {
//     _color = setOpacity(hexColor(colorHexCode), _isActive, _isDisabled);
//     return this;
//   }
//
//   // AzTextStyle textColorIf(bool isCondition, String colorHexCode){
//   //   if(isCondition == true) {
//   //     textColor(colorHexCode);
//   //   }
//   //   return this;
//   // }
//
//   AzTextStyle textPrimary() {
//     _color = setOpacity(colorPrimary, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textSecondary() {
//     _color = setOpacity(colorSecondary, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textSuccess() {
//     _color = setOpacity(colorSuccess, _isActive, _isDisabled);
//     return this;
//   }
//   AzTextStyle textDanger() {
//     _color = setOpacity(colorDanger, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textWarning() {
//     _color = setOpacity(colorWarning, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textInfo() {
//     _color = setOpacity(colorInfo, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textLight() {
//     _color = setOpacity(colorLight, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textDark() {
//     _color = setOpacity(colorDark, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textWhite() {
//     _color = setOpacity(colorWhite, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle textMute() {
//     _color = colorMute;
//     return this;
//   }
//
//   AzTextStyle textLead() {
//     _color = colorLead;
//     return this;
//   }
//
//   // background color
//   AzTextStyle bg(String colorHexCode) {
//     _backgroundColor = hexColor(colorHexCode);
//     return this;
//   }
//
//   AzTextStyle bgPrimary() {
//     _backgroundColor = setOpacity(colorPrimary, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgSecondary() {
//     _backgroundColor = setOpacity(colorSecondary, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgSuccess() {
//     _backgroundColor = setOpacity(colorSuccess, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgDanger() {
//     _backgroundColor = setOpacity(colorDanger, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgWarning() {
//     _backgroundColor = setOpacity(colorWarning, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgInfo() {
//     _backgroundColor = setOpacity(colorInfo, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgLight() {
//     _backgroundColor = setOpacity(colorLight, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgDark() {
//     _backgroundColor = setOpacity(colorDark, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle bgWhite() {
//     _backgroundColor = setOpacity(colorWhite, _isActive, _isDisabled);
//     return this;
//   }
//
//   AzTextStyle disabled(int is_disabled){
//     if(is_disabled == 1) {
//       _isDisabled = 1;
//     }
//     return this;
//   }
//
//   AzTextStyle active(int is_active){
//     if(is_active == 1) {
//       _isActive = 1;
//     }
//     return this;
//   }
//
//   // fontweight
//   AzTextStyle fontWeight(FontWeight val) {
//     _fontWeight = val;
//     return this;
//   }
//
//   AzTextStyle fontWeightBold() {
//     _fontWeight = FontWeight.bold;
//     return this;
//   }
//
//   AzTextStyle fontWeightBolder() {
//     _fontWeight = FontWeight.w900;
//     return this;
//   }
//
//   AzTextStyle fontWeightLight() {
//     _fontWeight = FontWeight.w300;
//     return this;
//   }
//
//   AzTextStyle fontWeightLighter() {
//     _fontWeight = FontWeight.w100;
//     return this;
//   }
//
//   AzTextStyle fontWeightNormal() {
//     _fontWeight = FontWeight.normal;
//     return this;
//   }
//
//   // font stlye
//   AzTextStyle fontStyle(FontStyle val) {
//     _fontStyle = val;
//     return this;
//   }
//
//   AzTextStyle fontItalic() {
//     _fontStyle = FontStyle.italic;
//     return this;
//   }
//
//   AzTextStyle fontNormal() {
//     _fontStyle = FontStyle.normal;
//     return this;
//   }
//
//   // fontSize
//   AzTextStyle fontSize(double fontSize){
//     _fontSize = fontSize;
//     return this;
//   }
//
//   AzTextStyle h1() {
//     _fontSize = dH1;
//     return this;
//   }
//
//   AzTextStyle h2() {
//     _fontSize = dH2;
//     return this;
//   }
//
//   AzTextStyle h3() {
//     _fontSize = dH3;
//     return this;
//   }
//
//   AzTextStyle h4() {
//     _fontSize = dH4;
//     return this;
//   }
//
//   AzTextStyle h5() {
//     _fontSize = dH5;
//     return this;
//   }
//
//   AzTextStyle h6() {
//     _fontSize = dH6;
//     return this;
//   }
//
//   AzTextStyle display1() {
//     _fontSize = dDisplay1;
//     return this;
//   }
//
//   AzTextStyle display2() {
//     _fontSize = dDisplay2;
//     return this;
//   }
//
//   AzTextStyle display3() {
//     _fontSize = dDisplay3;
//     return this;
//   }
//
//   AzTextStyle display4() {
//     _fontSize = dDisplay4;
//     return this;
//   }
//
//   // AzTextStyle responsiveText(BuildContext context){
//   //   _fontSize = ResponsiveText().responsiveText(context, _fontSize);
//   //   return this;
//   // }
//
//   AzTextStyle letterSpacing(double val) {
//     _letterSpacing = val;
//     return this;
//   }
//
//   AzTextStyle wordSpacing(double val) {
//     _wordSpacing = val;
//     return this;
//   }
//
//   AzTextStyle height(double val) {
//     _height = val;
//     return this;
//   }
//
//   AzTextStyle foreground(Paint val) {
//     // make paint to hex
//     _foreground = val;
//     return this;
//   }
//
//   AzTextStyle background(Paint val) {
//     // make paint to hex
//     _background = val;
//     return this;
//   }
//
//   AzTextStyle fontFeatures(List<FontFeature> val) {
//     _fontFeatures = val;
//     return this;
//   }
//
//   AzTextStyle textBaseline(TextBaseline val) {
//     _textBaseline = val;
//     return this;
//   }
//
//   AzTextStyle textDecoration(TextDecoration val) {
//     _textDecoration = val;
//     return this;
//   }
//
//   AzTextStyle textDecorationColor(Color val) {
//     _textDecorationColor = val;
//     return this;
//   }
//
//   AzTextStyle textDecorationThickness(double val) {
//     _textDecorationThickness = val;
//     return this;
//   }
//
//   AzTextStyle shadows(List<Shadow> val) {
//     _shadows = val;
//     return this;
//   }
//
//   AzTextStyle fontFamily(String val) {
//     _fontFamily = val;
//     return this;
//   }
//
//   AzTextStyle fontFamilyFallback(List<String> val) {
//     _fontFamilyFallback = val;
//     return this;
//   }
//
//   TextStyle textStyle() {
//     return TextStyle(
//       color: _color,
//       backgroundColor: _backgroundColor,
//       fontWeight: _fontWeight,
//       fontStyle: _fontStyle,
//       fontSize: _fontSize,
//       letterSpacing: _letterSpacing,
//       wordSpacing: _wordSpacing,
//       height: _height,
//       // leadingDistribution: _leadingDistribution,
//       // locale: _locale,
//       foreground: _foreground,
//       background: _background,
//       fontFeatures: _fontFeatures,
//       textBaseline: _textBaseline,
//       decoration: _textDecoration,
//       decorationColor: _textDecorationColor,
//       decorationThickness: _textDecorationThickness,
//       shadows: _shadows,
//       fontFamily: _fontFamily,
//       fontFamilyFallback: _fontFamilyFallback,
//     );
//   }
//
// // Az method() => Az(
// //   Builder(
// //     builder: (context) => build(context),
// //   ),
// //   key,
// // );
// }
//
