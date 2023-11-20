import 'dart:ui';
import '../helper/config.dart';
import 'positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtText on Text {
  AzText azText() => AzText(data ?? "");
}

// ignore: must_be_immutable
class AzText extends StatelessWidget { // extends AzContainer StatelessWidget
  Widget widget = const Text('');
  dynamic name;

  // style proeprties here
  Color? _textColor;
  FontWeight _fontWeight = FontWeight.normal;
  double? _fontSize;

  double? _letterSpacing;
  double? _wordSpacing;
  TextBaseline? _textBaseline;
  double? _height;
  TextLeadingDistribution? _leadingDistribution;
  Locale? _locale;
  Paint? _foreground;
  Paint? _background;
  List<Shadow>? _shadows;
  List<FontFeature>? _fontFeatures;
  List<FontVariation>? _fontVariations;
  TextDecoration? _decoration;
  Color? _decorationColor;
  TextDecorationStyle? _decorationStyle;
  double? _decorationThickness;
  // String? _debugLabel;
  String? _fontFamily;

  List<String>? _fontFamilyFallback;
  String? _package;
  TextOverflow? _overflow;
  String? _fontFamilyStrut;
  List<String>? _fontFamilyFallbackStrut;
  double? _fontSizeStrut;
  double? _heightStrut;
  TextLeadingDistribution? _leadingDistributionStrut;
  double? _leading;
  FontWeight? _fontWeightStrut;
  FontStyle? _fontStyle;
  bool? _forceStrutHeight;
  // String? _debugLabelStrut;
  String? _packageStrut;


  TextAlign? _textAlign;
  TextDirection? _textDirection;
  // Locale? _locale;
  bool? _softWrap;
  // TextOverflow? _overflow;
  double? _textScaleFactor;
  int? _maxLines;
  String? _semanticsLabel;
  TextWidthBasis? _textWidthBasis;
  TextHeightBehavior? _textHeightBehavior;
  Color? _selectionColor;


  AzText(this.name, {Key? key}) : super(key: key);

  AzText fs(size){
    _fontSize = size.toDouble();
    return this;
  }

  AzText fw(FontWeight fontWeight){
    _fontWeight = fontWeight;
    return this;
  }

  AzText bold(){
    _fontWeight = FontWeight.bold;
    return this;
  }
  AzText normal(){
    _fontWeight = FontWeight.normal;
    return this;
  }
  AzText w100(){
    _fontWeight = FontWeight.w100;
    return this;
  }
  AzText w200(){
    _fontWeight = FontWeight.w200;
    return this;
  }
  AzText w300(){
    _fontWeight = FontWeight.w300;
    return this;
  }
  AzText w400(){
    _fontWeight = FontWeight.w400;
    return this;
  }
  AzText w500(){
    _fontWeight = FontWeight.w500;
    return this;
  }
  AzText w600(){
    _fontWeight = FontWeight.w600;
    return this;
  }
  AzText w700(){
    _fontWeight = FontWeight.w700;
    return this;
  }
  AzText w800(){
    _fontWeight = FontWeight.w800;
    return this;
  }
  AzText w900(){
    _fontWeight = FontWeight.w900;
    return this;
  }

  AzText color(Color color){
    _textColor = color;
    return this;
  }

  AzText letterSpacing(double letterSpacing) {
    _letterSpacing = letterSpacing;
    return this;
  }

  AzText wordSpacing(double wordSpacing) {
    _wordSpacing = wordSpacing;
    return this;
  }

  AzText textBaseline(TextBaseline textBaseline) {
    _textBaseline = textBaseline;
    return this;
  }
  AzText alphabetic() {
    _textBaseline = TextBaseline.alphabetic;
    return this;
  }
  AzText ideographic() {
    _textBaseline = TextBaseline.ideographic;
    return this;
  }


  AzText height(double height) {
    _height = height;
    return this;
  }

  AzText leadingDistribution(TextLeadingDistribution leadingDistribution) {
    _leadingDistribution = leadingDistribution;
    return this;
  }
  AzText leadingDistributionEven() {
    _leadingDistribution = TextLeadingDistribution.even;
    return this;
  }
  AzText leadingDistributionProportional(){
    _leadingDistribution = TextLeadingDistribution.proportional;
    return this;
  }

  AzText locale(Locale locale) {
    _locale = locale;
    return this;
  }

  AzText foreground(Paint foreground) {
    _foreground = foreground;
    return this;
  }

  AzText background(Paint background) {
    _background = background;
    return this;
  }

  AzText shadows(List<Shadow> shadows) {
    _shadows = shadows;
    return this;
  }

  AzText fontFeatures(List<FontFeature> fontFeatures) {
    _fontFeatures = fontFeatures;
    return this;
  }

  AzText fontVariations(List<FontVariation> fontVariations) {
    _fontVariations = fontVariations;
    return this;
  }

  AzText decoration(TextDecoration decoration) {
    _decoration = decoration;
    return this;
  }
  AzText decorationLineThrough() {
    _decoration = TextDecoration.lineThrough;
    return this;
  }
  AzText decorationOverline() {
    _decoration = TextDecoration.overline;
    return this;
  }
  AzText decorationUnderline() {
    _decoration = TextDecoration.underline;
    return this;
  }
  AzText decorationNone() {
    _decoration = TextDecoration.none;
    return this;
  }

  AzText decorationColor(Color color) {
    _decorationColor = color;
    return this;
  }

  AzText decorationStyle(TextDecorationStyle decorationStyle) {
    _decorationStyle = decorationStyle;
    return this;
  }
  AzText decorationStyleSolid() {
    _decorationStyle = TextDecorationStyle.solid;
    return this;
  }
  AzText decorationStyleDotted() {
    _decorationStyle = TextDecorationStyle.dotted;
    return this;
  }
  AzText decorationStyleWavy() {
    _decorationStyle = TextDecorationStyle.wavy;
    return this;
  }
  AzText decorationStyleDashed() {
    _decorationStyle = TextDecorationStyle.dashed;
    return this;
  }
  AzText decorationStyleDouble() {
    _decorationStyle = TextDecorationStyle.double;
    return this;
  }

  AzText decorationThickness(double decorationThickness) {
    _decorationThickness = decorationThickness;
    return this;
  }

  AzText fontFamily(String? fontFamily) {
    _fontFamily = fontFamily;
    return this;
  }

  AzText fontFamilyFallback(List<String> fontFamilyFallback) {
    _fontFamilyFallback = fontFamilyFallback;
    return this;
  }

  AzText package(String package) {
    _package = package;
    return this;
  }

  AzText overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }
  AzText overflowEllipsis() {
    _overflow = TextOverflow.ellipsis;
    return this;
  }
  AzText overflowClip() {
    _overflow = TextOverflow.clip;
    return this;
  }
  AzText overflowFade() {
    _overflow = TextOverflow.fade;
    return this;
  }
  AzText overflowVisible() {
    _overflow = TextOverflow.visible;
    return this;
  }


  AzText fontFamilyStrut(String fontFamilyStrut) {
    _fontFamilyStrut = fontFamilyStrut;
    return this;
  }

  AzText fontFamilyFallbackStrut(List<String> fontFamilyFallbackStrut) {
    _fontFamilyFallbackStrut = fontFamilyFallbackStrut;
    return this;
  }

  AzText fontSizeStrut(double fontSizeStrut) {
    _fontSizeStrut = fontSizeStrut;
    return this;
  }

  AzText heightStrut(double heightStrut) {
    _heightStrut = heightStrut;
    return this;
  }

  AzText leadingDistributionStrut(TextLeadingDistribution? leadingDistributionStrut) {
    _leadingDistributionStrut = leadingDistributionStrut;
    return this;
  }

  AzText leading(double leading) {
    _leading = leading;
    return this;
  }

  AzText fontWeightStrut(FontWeight fontWeightStrut) {
    _fontWeightStrut = fontWeightStrut;
    return this;
  }

  AzText fontStyle(FontStyle fontStyle) {
    _fontStyle = fontStyle;
    return this;
  }

  AzText forceStrutHeight(bool forceStrutHeight) {
    _forceStrutHeight = forceStrutHeight;
    return this;
  }

  AzText packageStrut(String packageStrut) {
    _packageStrut = packageStrut;
    return this;
  }
  
  AzText textAlign(TextAlign textAlign){
    _textAlign = textAlign;
    return this;
  }
  AzText textDirection(TextDirection textDirection){
    _textDirection = textDirection;
    return this;
  }

  AzText softWrap(bool softWrap){
    _softWrap = _softWrap;
    return this;
  }

  AzText textScaleFactor(double textScaleFactor){
    _textScaleFactor = textScaleFactor;
    return this;
  }

  AzText maxLines(int maxLines){
    _maxLines = maxLines;
    return this;
  }

  AzText semanticsLabel(String semanticsLabel){
    _semanticsLabel = semanticsLabel;
    return this;
  }

  AzText textWidthBasis(TextWidthBasis textWidthBasis){
    _textWidthBasis = textWidthBasis;
    return this;
  }

  AzText textHeightBehavior(TextHeightBehavior textHeightBehavior){
    _textHeightBehavior = textHeightBehavior;
    return this;
  }

  AzText selectionColor(Color selectionColor){
    _selectionColor = selectionColor;
    return this;
  }

  /*
  * Methods for work easy
  * */
  AzText defaultColor(){
    _textColor = AzUtlis().colorDefault;
    return this;
  }
  AzText primaryColor(){
    _textColor = AzUtlis().colorPrimary;
    return this;
  }

  toBuild(){
    return Text(name.toString(),
      key:key,
      style: TextStyle(
        // bool inherit = true,
        color: _textColor,
        // Color? backgroundColor,
        // double? fontSize,
        fontWeight: _fontWeight,
        fontSize: _fontSize,
        letterSpacing: _letterSpacing,
        wordSpacing: _wordSpacing,
        textBaseline: _textBaseline,
        height: _height,
        leadingDistribution: _leadingDistribution,
        locale: _locale,
        foreground: _foreground,
        background: _background,
        shadows: _shadows,
        fontFeatures: _fontFeatures,
        fontVariations: _fontVariations,
        decoration: _decoration,
        decorationColor: _decorationColor,
        decorationStyle: _decorationStyle,
        decorationThickness: _decorationThickness,
        // debugLabel: _debugLabel,
        fontFamily: _fontFamily,
        fontFamilyFallback: _fontFamilyFallback,
        package: _package,
        overflow: _overflow,
      ),
      // StrutStyle? strutStyle,
      strutStyle: StrutStyle(
        fontFamily: _fontFamilyStrut,
        fontFamilyFallback: _fontFamilyFallbackStrut,
        fontSize: _fontSizeStrut,
        height: _heightStrut,
        leadingDistribution: _leadingDistributionStrut,
        leading: _leading,
        fontWeight: _fontWeightStrut,
        fontStyle: _fontStyle,
        forceStrutHeight: _forceStrutHeight,
        // debugLabel: _debugLabel,
        package: _packageStrut,
      ),
      textAlign: _textAlign,
      textDirection: _textDirection,
      locale: _locale,
      softWrap: _softWrap,
      overflow: _overflow,
      textScaleFactor: _textScaleFactor,
      maxLines: _maxLines,
      semanticsLabel: _semanticsLabel,
      textWidthBasis: _textWidthBasis,
      textHeightBehavior: _textHeightBehavior,
      selectionColor: _selectionColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget:toBuild());
  AzCard card() => AzCard(toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());
}
