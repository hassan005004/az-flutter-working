import 'positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../helper/responsive.dart';
import '../helper/config.dart';
import '../helper/hex_color.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtTextFormFiled on TextFormField {
  // get children => null;
  AzTextFormField azTextFormField() => AzTextFormField();
}

// ignore: must_be_immutable
class AzTextFormField extends StatelessWidget {
  // final List<Widget> _children;
  // final Key key;

  TextEditingController? _controller;
  String? _initialValue;
  FocusNode? _focusNode;
  TextInputType? _keyboardType;
  TextCapitalization _textCapitalization = TextCapitalization.none;
  TextInputAction? _textInputAction;
  TextDirection? _textDirection;
  TextAlign _textAlign = TextAlign.left;
  TextAlignVertical? _textAlignVertical;
  bool _autofocus = false;
  bool _readOnly = false;
  // ToolbarOptions? _toolbarOptions;
  bool? _showCursor;
  String _obscuringCharacter = '•';
  SmartDashesType? _smartDashesType;
  SmartQuotesType? _smartQuotesType;
  bool _obscureText = false;
  bool _autocorrect = true;
  bool _enableSuggestions = true;
  MaxLengthEnforcement? _maxLengthEnforcement;
  int? _maxLines = 1;
  int? _minLines = 1;
  bool _expands = false;
  dynamic _onChanged;
  // dynamic _onEditingComplete;
  dynamic _onTap;
  dynamic _onSaved;
  dynamic _validator;

  // inputDecoration
  EdgeInsetsGeometry? _contentPadding;
  Widget? _prefixIcon;
  Widget? _suffixIcon;
  TextStyle? _textStyle;
  String? _hintText;
  TextStyle? _hintStyle;
  String? _labelText;
  TextStyle? _labelStyle;

  double _borderWidth = dBorderWidth;

  Color _errorBorderColor = hexColor(cBorder);
  OutlineInputBorder? _errorBorder;

  Color _focusedBorderColor = hexColor(cBorder);
  OutlineInputBorder? _focusedBorder;

  final Color _focusedErrorBorderColor = hexColor(cBorder);
  OutlineInputBorder? _focusedErrorBorder;

  Color _disabledBorderColor = hexColor(cBorder);
  OutlineInputBorder? _disabledBorder;

  Color _enabledBorderColor = hexColor(cBorder);
  OutlineInputBorder? _enabledBorder;

  Color _borderColor = hexColor(cPrimary);
  OutlineInputBorder? _border;
  // Color? _borderTopColor = color(cBorder);
  // Color? _borderRightColor = color(cBorder);
  // Color? _borderBottomColor = color(cBorder);
  // Color? _borderLeftColor = color(cBorder);
  // double? _borderTopWidth = dBorderWidth;
  // double? _borderRightWidth = dBorderWidth;
  // double? _borderBottomWidth = dBorderWidth;
  // double? _borderLeftWidth = dBorderWidth;
  // BorderStyle? _borderTopStyle = BorderStyle.solid;
  // BorderStyle? _borderRightStyle = BorderStyle.solid;
  // BorderStyle? _borderBottomStyle = BorderStyle.solid;
  // BorderStyle? _borderLeftStyle = BorderStyle.solid;
  double _roundedTopLeft = 0;
  double _roundedTopRight = 0;
  double _roundedBottomLeft = 0;
  double _roundedBottomRight = 0;



  // testStyle
  // Color? _color;
  // Color? _backgroundColor;
  // FontWeight? _fontWeight;
  // FontStyle? _fontStyle;
  // double? _fontSize;
  // double? _letterSpacing;
  // double? _wordSpacing;
  // double? _height;
  // Paint? _foreground;
  // Paint? _background;
  // List<FontFeature>? _fontFeatures;
  // TextBaseline? _textBaseline;
  // TextDecoration? _textDecoration;
  // Color? _textDecorationColor;
  // double? _textDecorationThickness;
  // List<Shadow>? _shadows;
  // String? _fontFamily;
  // List<String>? _fontFamilyFallback;

  int isDisabled_ = 0;
  int isActive_ = 0;


  AzTextFormField({Key? key}) : super(key: key);

  AzTextFormField textEditingController(TextEditingController textEditingController) {
    _controller = textEditingController;
    return this;
  }

  AzTextFormField initialValue(String initialValue) {
    _initialValue = _initialValue;
    return this;
  }

  AzTextFormField focusNode(FocusNode focusNode) {
    _focusNode = focusNode;
    return this;
  }

  AzTextFormField keyboardType(TextInputType keyboardType) {
    _keyboardType = keyboardType;
    return this;
  }

  AzTextFormField keyboardTypeNumberWithOptions({bool signed = false, bool decimal = false}) {
    _keyboardType = TextInputType.numberWithOptions(signed:signed,decimal:decimal);
    return this;
  }

  AzTextFormField keyboardTypeDateTime() {
    _keyboardType = TextInputType.datetime;
    return this;
  }

  AzTextFormField keyboardTypeNumber() {
    _keyboardType = TextInputType.number;
    return this;
  }

  AzTextFormField keyboardTypeText() {
    _keyboardType = TextInputType.text;
    return this;
  }

  AzTextFormField keyboardTypeEmailAddress() {
    _keyboardType = TextInputType.emailAddress;
    return this;
  }

  AzTextFormField keyboardTypeMultiline() {
    _keyboardType = TextInputType.multiline;
    return this;
  }

  AzTextFormField keyboardTypeName() {
    _keyboardType = TextInputType.name;
    return this;
  }

  AzTextFormField keyboardTypePhone() {
    _keyboardType = TextInputType.phone;
    return this;
  }

  AzTextFormField keyboardTypeStreetAddress() {
    _keyboardType = TextInputType.streetAddress;
    return this;
  }

  AzTextFormField keyboardTypeUrl() {
    _keyboardType = TextInputType.url;
    return this;
  }

  AzTextFormField keyboardTypeVisiblePassword() {
    _keyboardType = TextInputType.visiblePassword;
    return this;
  }

  AzTextFormField textCapitalization(TextCapitalization textCapitalization) {
    _textCapitalization = textCapitalization;
    return this;
  }

  AzTextFormField textCapitalizationNone() {
    _textCapitalization = TextCapitalization.none;
    return this;
  }

  AzTextFormField textCapitalizationCharacters() {
    _textCapitalization = TextCapitalization.characters;
    return this;
  }

  AzTextFormField textCapitalizationSentences() {
    _textCapitalization = TextCapitalization.sentences;
    return this;
  }

  AzTextFormField textCapitalizationWords() {
    _textCapitalization = TextCapitalization.words;
    return this;
  }

  AzTextFormField textInputAction(TextInputAction textInputAction) {
    textInputAction = textInputAction;
    return this;
  }

  AzTextFormField textInputActionNone() {
    _textInputAction = TextInputAction.none;
    return this;
  }

  AzTextFormField textInputActionNewline() {
    _textInputAction = TextInputAction.newline;
    return this;
  }

  AzTextFormField textInputActionContinueAction() {
    _textInputAction = TextInputAction.continueAction;
    return this;
  }

  AzTextFormField textInputActionDone() {
    _textInputAction = TextInputAction.done;
    return this;
  }

  AzTextFormField textInputActionEmergencyCall() {
    _textInputAction = TextInputAction.emergencyCall;
    return this;
  }

  AzTextFormField textInputActionGo() {
    _textInputAction = TextInputAction.go;
    return this;
  }

  AzTextFormField textInputActionJoin() {
    _textInputAction = TextInputAction.join;
    return this;
  }

  AzTextFormField textInputActionNext() {
    _textInputAction = TextInputAction.next;
    return this;
  }

  AzTextFormField textInputActionPrevious() {
    _textInputAction = TextInputAction.previous;
    return this;
  }

  AzTextFormField textInputActionRoute() {
    _textInputAction = TextInputAction.route;
    return this;
  }

  AzTextFormField textInputActionSearch() {
    _textInputAction = TextInputAction.search;
    return this;
  }

  AzTextFormField textInputActionSend() {
    _textInputAction = TextInputAction.send;
    return this;
  }

  AzTextFormField textInputActionUnspecified() {
    _textInputAction = TextInputAction.unspecified;
    return this;
  }

  AzTextFormField textDirection(TextDirection val) {
    _textDirection = val;
    return this;
  }

  AzTextFormField ltr() {
    _textDirection = TextDirection.ltr;
    return this;
  }

  AzTextFormField rtl() {
    _textDirection = TextDirection.rtl;
    return this;
  }

  // text aligment
  AzTextFormField textLeft() {
    _textAlign = TextAlign.left;
    return this;
  }

  // AzTextFormField textMediaLeft(BuildContext context, String val) {
  //   if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.left;
  //     return this;
  //   }
  //   if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.left;
  //     return this;
  //   }
  //   if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
  //     _textAlign = TextAlign.left;
  //     return this;
  //   }
  //   if(val == 'xl' && Responsive.xl(context)){
  //     _textAlign = TextAlign.left;
  //     return this;
  //   }
  //   return this;
  // }

  AzTextFormField textCenter() {
    _textAlign = TextAlign.center;
    return this;
  }

  // AzTextFormField textMediaCenter(BuildContext context, String val) {
  //   if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.center;
  //     return this;
  //   }
  //   if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.center;
  //     return this;
  //   }
  //   if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
  //     _textAlign = TextAlign.center;
  //     return this;
  //   }
  //   if(val == 'xl' && Responsive.xl(context)){
  //     _textAlign = TextAlign.center;
  //     return this;
  //   }
  //   return this;
  // }

  AzTextFormField textRight() {
    _textAlign = TextAlign.right;
    return this;
  }

  // AzTextFormField textMediaRight(BuildContext context, String val) {
  //   if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.right;
  //     return this;
  //   }
  //   if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.right;
  //     return this;
  //   }
  //   if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
  //     _textAlign = TextAlign.right;
  //     return this;
  //   }
  //   if(val == 'xl' && Responsive.xl(context)){
  //     _textAlign = TextAlign.right;
  //     return this;
  //   }
  //   return this;
  // }

  AzTextFormField textStart() {
    _textAlign = TextAlign.start;
    return this;
  }

  // AzTextFormField textMediaStart(BuildContext context, String val) {
  //   if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.start;
  //     return this;
  //   }
  //   if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.start;
  //     return this;
  //   }
  //   if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
  //     _textAlign = TextAlign.start;
  //     return this;
  //   }
  //   if(val == 'xl' && Responsive.xl(context)){
  //     _textAlign = TextAlign.start;
  //     return this;
  //   }
  //   return this;
  // }

  AzTextFormField textEnd() {
    _textAlign = TextAlign.end;
    return this;
  }

  // AzTextFormField textMediaEnd(BuildContext context, String val) {
  //   if(val == 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.end;
  //     return this;
  //   }
  //   if(val == 'md' && (Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
  //     _textAlign = TextAlign.end;
  //     return this;
  //   }
  //   if(val == 'lg' && (Responsive.lg(context) || Responsive.xl(context))){
  //     _textAlign = TextAlign.end;
  //     return this;
  //   }
  //   if(val == 'xl' && Responsive.xl(context)){
  //     _textAlign = TextAlign.end;
  //     return this;
  //   }
  //   return this;
  // }

  AzTextFormField textJustify() {
    _textAlign = TextAlign.justify;
    return this;
  }

  AzTextFormField textVTop() {
    _textAlignVertical = TextAlignVertical.top;
    return this;
  }

  AzTextFormField textVCenter() {
    _textAlignVertical = TextAlignVertical.center;
    return this;
  }

  AzTextFormField textVBottom() {
    _textAlignVertical = TextAlignVertical.bottom;
    return this;
  }

  AzTextFormField autofocus({bool autofocus = true}) {
    _autofocus = autofocus;
    return this;
  }

  AzTextFormField readOnly({bool readOnly = true}) {
    _readOnly = readOnly;
    return this;
  }

  // AzTextFormField toolbarOptions(ToolbarOptions toolbarOptions) {
  //   _toolbarOptions = toolbarOptions;
  //   return this;
  // }

  AzTextFormField showCursor({bool showCursor = true}) {
    _showCursor = showCursor;
    return this;
  }

  AzTextFormField obscuringCharacter(String obscuringCharacter) {
    _obscuringCharacter = obscuringCharacter;
    return this;
  }

  AzTextFormField smartDashesType(SmartDashesType smartDashesType) {
    _smartDashesType = smartDashesType;
    return this;
  }

  AzTextFormField smartQuotesType(SmartQuotesType smartQuotesType) {
    _smartQuotesType = smartQuotesType;
    return this;
  }

  AzTextFormField obscureText([bool obscureText = true]) {
    _obscureText = obscureText;
    return this;
  }

  AzTextFormField autocorrect([bool autocorrect = true]) {
    _autocorrect = autocorrect;
    return this;
  }

  AzTextFormField enableSuggestions([bool enableSuggestions = true]) {
    _enableSuggestions = enableSuggestions;
    return this;
  }

  AzTextFormField maxLengthEnforcement(MaxLengthEnforcement maxLengthEnforcement) {
    _maxLengthEnforcement = maxLengthEnforcement;
    return this;
  }

  AzTextFormField maxLengthEnforcementNone() {
    _maxLengthEnforcement = MaxLengthEnforcement.none;
    return this;
  }

  AzTextFormField maxLengthEnforcementEnforced() {
    _maxLengthEnforcement = MaxLengthEnforcement.enforced;
    return this;
  }

  AzTextFormField maxLengthEnforcementTruncateAfterCompositionEnds() {
    _maxLengthEnforcement = MaxLengthEnforcement.truncateAfterCompositionEnds;
    return this;
  }

  AzTextFormField maxLines(int maxLines) {
    _maxLines = maxLines;
    return this;
  }

  AzTextFormField minLines(int minLines) {
    _minLines = minLines;
    return this;
  }

  AzTextFormField expands({bool expands = true}) {
    _expands = expands;
    return this;
  }

  AzTextFormField onChanged(dynamic onChanged) {
    _onChanged = onChanged;
    return this;
  }

  // AzTextFormField onEditingComplete(dynamic onEditingComplete) {
  //   _onEditingComplete = onEditingComplete;
  //   return this;
  // }


  AzTextFormField onTap(dynamic onTap) {
    _onTap = onTap;
    return this;
  }

  AzTextFormField onSaved(dynamic onSaved) {
    _onSaved = onSaved;
    return this;
  }

  AzTextFormField validator(dynamic validator) {
    _validator = validator;
    return this;
  }

  AzTextFormField textStyle(TextStyle textStyle) {
    _textStyle = textStyle; //AzTextStyle().textStyle()
    return this;
  }

  // inputDecoration
  AzTextFormField labelText(String labelText) {
    _labelText = labelText;
    return this;
  }

  AzTextFormField labelStyle(TextStyle labelStyle) {
    _labelStyle = labelStyle; //AzTextStyle().textStyle()
    return this;
  }

  AzTextFormField hintLabelText(String hintLabelText) {
    _hintText = hintLabelText;
    _labelText = hintLabelText;
    return this;
  }

  AzTextFormField hintLabelStyle(TextStyle hintLabelStyle) {
    _hintStyle = hintLabelStyle; //AzTextStyle().textStyle()
    _labelStyle = hintLabelStyle; //AzTextStyle().textStyle()
    return this;
  }

  AzTextFormField hintText(String hintText) {
    _hintText = hintText;
    return this;
  }

  // AzTextFormField hintStyle(TextStyle hintStyle) {
  //   _hintStyle = hintStyle;
  //   return this;
  // }

  AzTextFormField hintStyle(TextStyle hintStyle) {
    _hintStyle = hintStyle; //AzTextStyle().textStyle()
    return this;
  }

  AzTextFormField contentPadding(EdgeInsetsGeometry padding) {
    _contentPadding = padding;
    return this;
  }

  AzTextFormField prefixIcon(Widget icon) {
    _prefixIcon = icon;
    return this;
  }

  AzTextFormField suffixIcon(Widget icon) {
    _suffixIcon = icon;
    return this;
  }

  AzTextFormField rounded([double val = radius]) {
    _roundedTopLeft = val;
    _roundedTopRight = val;
    _roundedBottomLeft = val;
    _roundedBottomRight= val;
    return this;
  }

  AzTextFormField roundedLg([double val = radiusLg]) {
    _roundedTopLeft = val;
    _roundedTopRight = val;
    _roundedBottomLeft = val;
    _roundedBottomRight= val;
    return this;
  }

  AzTextFormField roundedSm([double val = radiusSm]) {
    _roundedTopLeft = val;
    _roundedTopRight = val;
    _roundedBottomLeft = val;
    _roundedBottomRight= val;
    return this;
  }

  AzTextFormField roundedTop([double val = radius]) {
    _roundedTopLeft = val;
    _roundedTopRight = val;
    return this;
  }

  AzTextFormField roundedTopLeft([double val = radius]) {
    _roundedTopLeft = val;
    return this;
  }
  AzTextFormField roundedTopRight([double val = radius]) {
    _roundedTopRight = val;
    return this;
  }

  AzTextFormField roundedRight([double val = radius]) {
    _roundedTopRight = val;
    _roundedBottomRight = val;
    return this;
  }

  AzTextFormField roundedBottom([double val = radius]) {
    _roundedBottomLeft = val;
    _roundedBottomRight= val;
    return this;
  }

  AzTextFormField roundedBottomLeft([double val = radius]) {
    _roundedBottomLeft = val;
    return this;
  }

  AzTextFormField roundedBottomRight([double val = radius]) {
    _roundedBottomRight = val;
    return this;
  }

  AzTextFormField roundedLeft([double val = radius]) {
    _roundedTopLeft = val;
    _roundedBottomLeft = val;
    return this;
  }

  // border
  AzTextFormField borderWidth([double val = dBorderWidth]) {
    // _borderWidth = _borderTopWidth = _borderRightWidth = _borderBottomWidth = _borderLeftWidth = val;
    _borderWidth = val;
    return this;
  }

  // AzTextFormField borderTopWidth([double val = dBorderWidth]){
  //   _borderTopWidth = val;
  //   return this;
  // }

  // AzTextFormField borderRightWidth([double val = dBorderWidth]){
  //   _borderRightWidth = val;
  //   return this;
  // }

  // AzTextFormField borderBottomWidth([double val = dBorderWidth]){
  //   _borderBottomWidth = val;
  //   return this;
  // }

  // AzTextFormField borderLeftWidth([double val = dBorderWidth]){
  //   _borderLeftWidth = val;
  //   return this;
  // }

  AzTextFormField borderColor(String colorHexCode) {
    // _borderColor = _borderTopColor = _borderRightColor = _borderBottomColor = _borderLeftColor = color(colorHexCode);
    _borderColor = hexColor(colorHexCode);
    _border = helperBorder();
    return this;
  }
  AzTextFormField borderNone(){
    _border = const OutlineInputBorder(
      // borderRadius: BorderRadius.only(
      //   topLeft:Radius.circular(_roundedTopLeft),
      //   topRight:Radius.circular(_roundedTopRight),
      //   bottomRight:Radius.circular(_roundedBottomLeft),
      //   bottomLeft:Radius.circular(_roundedBottomRight),
      // ),
      borderSide: BorderSide.none,
    );
    return this;
  }

  // AzTextFormField borderTopColor(String colorHexCode){
  //   _borderTopColor = color(colorHexCode);
  //   return this;
  // }

  // AzTextFormField borderRightColor(String colorHexCode){
  //   _borderRightColor = color(colorHexCode);
  //   return this;
  // }

  // AzTextFormField borderBottomColor(String colorHexCode){
  //   _borderBottomColor = color(colorHexCode);
  //   return this;
  // }

  // AzTextFormField borderLeftColor(String colorHexCode){
  //   _borderLeftColor = color(colorHexCode);
  //   return this;
  // }

  AzTextFormField errorBorder([String hexCode = cDanger]){
    _errorBorderColor = hexColor(hexCode);
    _errorBorder = helperErrorBorder();
    return this;
  }

  AzTextFormField focusedBorder([String hexCode = cInfo]){
    _focusedBorderColor = hexColor(hexCode);
    _focusedBorder = helperFocusedBorder();
    return this;
  }

  AzTextFormField focusedErrorBorder([String hexCode = cDanger]){
    _focusedBorderColor = hexColor(hexCode);
    _focusedErrorBorder = helperFocusedErrorBorder();
    return this;
  }

  AzTextFormField disabledBorder([String hexCode = cInfo]){
    _disabledBorderColor = hexColor(hexCode);
    _disabledBorder = helperDisabledBorder();
    return this;
  }

  AzTextFormField enabledBorder([String hexCode = cMain]){
    _enabledBorderColor = hexColor(hexCode);
    _enabledBorder = helperEnabledBorder();
    return this;
  }

  AzTextFormField border([String hexCode = cBorder]){
    _borderColor = hexColor(hexCode);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderPrimary(){
    _borderColor = hexColor(cPrimary);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderSecondary(){
    _borderColor = hexColor(cSecondary);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderSuccess(){
    _borderColor = hexColor(cSuccess);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderDanger(){
    _borderColor = hexColor(cDanger);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderWarning(){
    _borderColor = hexColor(cWarning);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderInfo(){
    _borderColor = hexColor(cInfo);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderLight(){
    _borderColor = hexColor(cLight);
    _border = helperBorder();
    return this;
  }

  AzTextFormField borderDark(){
    _borderColor = hexColor(cDark);
    _border = helperBorder();
    return this;
  }

  // textStyle
  // color
  // AzTextFormField text(String colorHexCode) {
  //   _color = setOpacity(hexColor(colorHexCode), isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textPrimary() {
  //   _color = setOpacity(colorPrimary, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textSecondary() {
  //   _color = setOpacity(colorSecondary, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textSuccess() {
  //   _color = setOpacity(colorSuccess, isActive_, isDisabled_);
  //   return this;
  // }
  // AzTextFormField textDanger() {
  //   _color = setOpacity(colorDanger, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textWarning() {
  //   _color = setOpacity(colorWarning, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textInfo() {
  //   _color = setOpacity(colorInfo, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textLight() {
  //   _color = setOpacity(colorLight, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textDark() {
  //   _color = setOpacity(colorDark, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textWhite() {
  //   _color = setOpacity(colorWhite, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField textMute() {
  //   _color = colorMute;
  //   return this;
  // }
  //
  // AzTextFormField textLead() {
  //   _color = colorLead;
  //   return this;
  // }
  //
  // // background color
  // AzTextFormField bg(String colorHexCode) {
  //   _backgroundColor = hexColor(colorHexCode);
  //   return this;
  // }
  //
  // AzTextFormField bgPrimary() {
  //   _backgroundColor = setOpacity(colorPrimary, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgSecondary() {
  //   _backgroundColor = setOpacity(colorSecondary, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgSuccess() {
  //   _backgroundColor = setOpacity(colorSuccess, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgDanger() {
  //   _backgroundColor = setOpacity(colorDanger, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgWarning() {
  //   _backgroundColor = setOpacity(colorWarning, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgInfo() {
  //   _backgroundColor = setOpacity(colorInfo, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgLight() {
  //   _backgroundColor = setOpacity(colorLight, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgDark() {
  //   _backgroundColor = setOpacity(colorDark, isActive_, isDisabled_);
  //   return this;
  // }
  //
  // AzTextFormField bgWhite() {
  //   _backgroundColor = setOpacity(colorWhite, isActive_, isDisabled_);
  //   return this;
  // }

  AzTextFormField disabled(int isDisabled){
    if(isDisabled == 1) {
      isDisabled_ = 1;
    }
    return this;
  }

  AzTextFormField active(int isActive){
    if(isActive == 1) {
      isActive_ = 1;
    }
    return this;
  }

  // fontweight
  // AzTextFormField fontWeight(FontWeight val) {
  //   _fontWeight = val;
  //   return this;
  // }
  //
  // AzTextFormField fontWeightBold() {
  //   _fontWeight = FontWeight.bold;
  //   return this;
  // }
  //
  // AzTextFormField fontWeightBolder() {
  //   _fontWeight = FontWeight.w900;
  //   return this;
  // }
  //
  // AzTextFormField fontWeightLight() {
  //   _fontWeight = FontWeight.w300;
  //   return this;
  // }
  //
  // AzTextFormField fontWeightLighter() {
  //   _fontWeight = FontWeight.w100;
  //   return this;
  // }
  //
  // AzTextFormField fontWeightNormal() {
  //   _fontWeight = FontWeight.normal;
  //   return this;
  // }
  //
  // // font style
  // AzTextFormField fontStyle(FontStyle val) {
  //   _fontStyle = val;
  //   return this;
  // }
  //
  // AzTextFormField fontItalic() {
  //   _fontStyle = FontStyle.italic;
  //   return this;
  // }
  //
  // AzTextFormField fontNormal() {
  //   _fontStyle = FontStyle.normal;
  //   return this;
  // }
  //
  // // heading tags
  // AzTextFormField h1() {
  //   _fontSize = dH1;
  //   return this;
  // }
  //
  // AzTextFormField h2() {
  //   _fontSize = dH2;
  //   return this;
  // }
  //
  // AzTextFormField h3() {
  //   _fontSize = dH3;
  //   return this;
  // }
  //
  // AzTextFormField h4() {
  //   _fontSize = dH4;
  //   return this;
  // }
  //
  // AzTextFormField h5() {
  //   _fontSize = dH5;
  //   return this;
  // }
  //
  // AzTextFormField h6() {
  //   _fontSize = dH6;
  //   return this;
  // }
  //
  // AzTextFormField display1() {
  //   _fontSize = dDisplay1;
  //   return this;
  // }
  //
  // AzTextFormField display2() {
  //   _fontSize = dDisplay2;
  //   return this;
  // }
  //
  // AzTextFormField display3() {
  //   _fontSize = dDisplay3;
  //   return this;
  // }
  //
  // AzTextFormField display4() {
  //   _fontSize = dDisplay4;
  //   return this;
  // }
  //
  // AzTextFormField letterSpacing(double val) {
  //   _letterSpacing = val;
  //   return this;
  // }
  //
  // AzTextFormField wordSpacing(double val) {
  //   _wordSpacing = val;
  //   return this;
  // }
  //
  // AzTextFormField height(double val) {
  //   _height = val;
  //   return this;
  // }
  //
  // AzTextFormField foreground(Paint val) {
  //   // make paint to hex
  //   _foreground = val;
  //   return this;
  // }
  //
  // AzTextFormField background(Paint val) {
  //   // make paint to hex
  //   _background = val;
  //   return this;
  // }
  //
  // AzTextFormField fontFeatures(List<FontFeature> val) {
  //   _fontFeatures = val;
  //   return this;
  // }
  //
  // AzTextFormField textBaseline(TextBaseline val) {
  //   _textBaseline = val;
  //   return this;
  // }
  //
  // AzTextFormField textDecoration(TextDecoration val) {
  //   _textDecoration = val;
  //   return this;
  // }
  //
  // AzTextFormField textDecorationColor(Color val) {
  //   _textDecorationColor = val;
  //   return this;
  // }
  //
  // AzTextFormField textDecorationThickness(double val) {
  //   _textDecorationThickness = val;
  //   return this;
  // }
  //
  // AzTextFormField shadows(List<Shadow> val) {
  //   _shadows = val;
  //   return this;
  // }
  //
  // AzTextFormField fontFamily(String val) {
  //   _fontFamily = val;
  //   return this;
  // }
  //
  // AzTextFormField fontFamilyFallback(List<String> val) {
  //   _fontFamilyFallback = val;
  //   return this;
  // }


  toBuild() {
    return TextFormField(
      key: key,
      controller: _controller,
      initialValue: _initialValue,
      focusNode: _focusNode,
      keyboardType: _keyboardType,
      textCapitalization: _textCapitalization,
      textInputAction: _textInputAction,
      // strutStyle,
      textDirection: _textDirection,
      textAlign: _textAlign,
      textAlignVertical: _textAlignVertical,
      autofocus: _autofocus,
      readOnly: _readOnly,
      // toolbarOptions: _toolbarOptions, // 'toolbarOptions' is deprecated and shouldn't be used. Use `contextMenuBuilder` instead
      showCursor: _showCursor,
      obscuringCharacter: _obscuringCharacter,
      obscureText: _obscureText,
      autocorrect: _autocorrect,
      smartDashesType: _smartDashesType,
      smartQuotesType: _smartQuotesType,
      enableSuggestions: _enableSuggestions,
      // autovalidate: deprecated
      // maxLengthEnforced: deprected
      maxLengthEnforcement: _maxLengthEnforcement,
      maxLines: _maxLines,
      minLines: _minLines,
      expands: _expands,
      // maxLength,
      onChanged: _onChanged,
      onTap: _onTap,
      // onEditingComplete
      // onFieldSubmitted
      onSaved: _onSaved,
      validator: _validator,
      // inputFormatters
      // enabled
      // cursorWidth
      // cursorHeight
      // cursorRadius
      // cursorColor
      // keyboardAppearance
      // scrollPadding = const EdgeInsets.all(20.0)
      // enableInteractiveSelection
      // selectionControls
      // Widget Function(BuildContext, {int currentLength, bool isFocused, int maxLength}) buildCounter
      // scrollPhysics
      // autofillHints
      // autovalidateMode
      // scrollController
      decoration: InputDecoration(
        // Widget icon
        labelText: _labelText,
        labelStyle: _labelStyle,
        // helperText
        // helperStyle
        // helperMaxLines
        hintText: _hintText,
        hintStyle: _hintStyle,
        // hintTextDirection
        // hintMaxLines
        // errorText
        // errorStyle
        // errorMaxLines
        // hasFloatingPlaceholder
        // floatingLabelBehavior
        // isCollapsed
        // isDense
        contentPadding: _contentPadding,
        prefixIcon: _prefixIcon,
        // prefixIconConstraints
        // prefix
        // prefixText
        // prefixStyle
        suffixIcon: _suffixIcon,
        // suffix
        // suffixText
        // suffixStyle
        // suffixIconConstraints
        // counter
        // counterText
        // counterStyle
        // filled,
        // fillColor
        // focusColor
        // hoverColor
        errorBorder:_errorBorder,
        focusedBorder:_focusedBorder,
        focusedErrorBorder:_focusedErrorBorder,
        disabledBorder:_disabledBorder,
        enabledBorder:_enabledBorder,
        border:_border,
        // enabled
        // semanticCounterText
        // alignLabelWithHint
      ),
      style: _textStyle,
      // TextStyle(
      //   color: _color,
      //   backgroundColor: _backgroundColor,
      //   fontWeight: _fontWeight,
      //   fontStyle: _fontStyle,
      //   fontSize: _fontSize,
      //   letterSpacing: _letterSpacing,
      //   wordSpacing: _wordSpacing,
      //   height: _height,
      //   // leadingDistribution: _leadingDistribution,
      //   // locale: _locale,
      //   foreground: _foreground,
      //   background: _background,
      //   fontFeatures: _fontFeatures,
      //   textBaseline: _textBaseline,
      //   decoration: _textDecoration,
      //   decorationColor: _textDecorationColor,
      //   decorationThickness: _textDecorationThickness,
      //   shadows: _shadows,
      //   fontFamily: _fontFamily,
      //   fontFamilyFallback: _fontFamilyFallback,
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }


  helperErrorBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _errorBorderColor, width: _borderWidth),
    );
  }
  helperFocusedBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _focusedBorderColor, width: _borderWidth),
    );
  }
  helperFocusedErrorBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _focusedErrorBorderColor, width: _borderWidth),
    );
  }
  helperDisabledBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _disabledBorderColor, width: _borderWidth),
    );
  }
  helperEnabledBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _enabledBorderColor, width: _borderWidth),
    );
  }
  helperBorder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft:Radius.circular(_roundedTopLeft),
        topRight:Radius.circular(_roundedTopRight),
        bottomRight:Radius.circular(_roundedBottomLeft),
        bottomLeft:Radius.circular(_roundedBottomRight),
      ),
      borderSide: BorderSide(color: _borderColor, width: _borderWidth),
    );
  }

  AzContainer container() => AzContainer(widget: toBuild());
  AzCard card() => AzCard(toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());



}
//
//
// //
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// //
// // import 'package:example/widgets/common_widget.dart';
// // import '../helper/config.dart';
// // import 'container.dart';
// //
// // class AzTextFormField extends AzContainer{
// //
// //   AzTextFormField(this.context, this._label);
// //
// //   BuildContext context;
// //   String _label = '';
// //   String? _hintText = '';
// //   String? _initialValue;
// //   void Function(String)? _onChanged;
// //   List<TextInputFormatter>? inputType;
// //   TextInputType keyboardType = TextInputType.none;
// //   TextEditingController? _controller;
// //   bool _obscureText = false;
// //   double horizontalPadding = 5.0;
// //   double verticalPadding = 0.0;
// //   double _height = 30.0;
// //   TextAlign _textAlign = TextAlign.start;
// //   OutlineInputBorder? _focusedBorder = OutlineInputBorder(
// //     borderSide: BorderSide(color: main_one_color, width: 2.0),
// //   );
// //   OutlineInputBorder? _enabledBorder = OutlineInputBorder(
// //     borderSide: BorderSide(color: Colors.black, width: 1.0),
// //   );
// //
// //
// //
// //   // dynamic name;
// //   // void Function()? onPressed;
// //   // Color borderColor = Colors.transparent;//border_color;
// //   // Color bgColor = Colors.transparent;//main_one_color.withOpacity(0.125);
// //   // Color textColor = Colors.black;
// //   // EdgeInsets padding = EdgeInsets.symmetric(horizontal: padding_x, vertical: padding_y);
// //   // double radius = radius_one;
// //   // FontWeight fontWeight = FontWeight.bold;
// //   // double _fontSize = 13;
// //   // double? _width;
// //   // double? _height;
// //   //
// //   //
// //   //
// //   // fs(double size){
// //   //   _fontSize = size;
// //   //   return this;
// //   // }
// //   //
// //   // color(Color color){
// //   //   borderColor = color;
// //   //   bgColor = color.withOpacity(0.25);
// //   //   // textColor = color;
// //   //   return this;
// //   // }
// //   //
// //   // full(){
// //   //   _width = double.maxFinite;//MediaQuery.of(context).size.width;
// //   //   return this;
// //   // }
// //   //
// //   // width(double width){
// //   //   _width = width;
// //   //   return this;
// //   // }
// //   //
// //   // height(double height){
// //   //   _height = height;
// //   //   return this;
// //   // }
// //   //
// //   // pLTRB(double left, double top, double right, double bottom){
// //   //   padding = EdgeInsets.fromLTRB(left, top, right, bottom);
// //   //   return this;
// //   // }
// //
// //   initialValue(String value){
// //     _initialValue = value;
// //   }
// //
// //   textAlign(TextAlign textAlign){
// //     _textAlign = textAlign;
// //     return this;
// //   }
// //
// //   hintText(String hintText){
// //     _hintText = hintText;
// //     return this;
// //   }
// //
// //   // contentPadding(contentPadding){
// //   //   _contentPadding = contentPadding;
// //   //   return this;
// //   // }
// //
// //   type(String number){
// //     keyboardType = TextInputType.number;
// //     inputType = [
// //       FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
// //     ];
// //     return this;
// //   }
// //
// //   onChanged(void Function(String) onChanged){
// //     _onChanged = onChanged;
// //
// //     return this;
// //   }
// //
// //   controller(TextEditingController controller){
// //     _controller = controller;
// //     return this;
// //   }
// //
// //   obscureText(bool obscureText){
// //     _obscureText = obscureText;
// //     return this;
// //   }
// //
// //   padding(double? x, double? y){
// //     if(x != null){
// //       horizontalPadding = x;
// //     }
// //     if(y != null){
// //       verticalPadding = y;
// //     }
// //     return this;
// //   }
// //
// //   height(double height){
// //     _height = height;
// //     return this;
// //   }
// //
// //   focusedBorder(focusedBorder){
// //     _focusedBorder = focusedBorder;
// //     return this;
// //   }
// //
// //   enabledBorder(enabledBorder){
// //     _enabledBorder = enabledBorder;
// //     return this;
// //   }
// //
// //
// //   // @override
// //   // Widget build(BuildContext context) {
// //   //   return Column(
// //   //     crossAxisAlignment: CrossAxisAlignment.start,
// //   //     children: [
// //   //       if(_label != '')
// //   //         Column(
// //   //           children: [
// //   //             label(_label),
// //   //             gapY(5),
// //   //           ],
// //   //         ),
// //   //
// //   //       Container(
// //   //         height: _height,
// //   //         child: TextFormField(
// //   //           controller: _controller,
// //   //           initialValue: _initialValue,
// //   //           keyboardType: keyboardType,
// //   //           inputFormatters: inputType,
// //   //           obscureText: _obscureText,
// //   //           decoration: InputDecoration(
// //   //             hintText: '',
// //   //             contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
// //   //             focusedBorder: OutlineInputBorder(
// //   //               borderSide: BorderSide(color: main_one_color, width: 2.0),
// //   //             ),
// //   //             enabledBorder: const OutlineInputBorder(
// //   //               borderSide: BorderSide(color: Colors.black, width: 1.0),
// //   //             ),
// //   //           ),
// //   //           onChanged: _onChanged,
// //   //         ),
// //   //       ),
// //   //     ],
// //   //   );
// //   // }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return buildItOnAzMethod();
// //   }
// //
// //   Widget buildItOnAzMethod() => Column(
// //     crossAxisAlignment: CrossAxisAlignment.start,
// //     children: [
// //       if(_label != '')
// //         Column(
// //           children: [
// //             label(_label),
// //             gapY(5),
// //           ],
// //         ),
// //
// //       Container(
// //         height: _height,
// //         child: TextFormField(
// //           textAlign: _textAlign,
// //           controller: _controller,
// //           initialValue: _initialValue,
// //           keyboardType: keyboardType,
// //           inputFormatters: inputType,
// //           obscureText: _obscureText,
// //           decoration: InputDecoration(
// //             hintText: _hintText,
// //             contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
// //             focusedBorder: _focusedBorder,
// //             enabledBorder: _enabledBorder,
// //           ),
// //           onChanged: _onChanged,
// //         ),
// //       ),
// //     ],
// //   );
// //
// //   AzContainer az() => AzContainer(child:this.buildItOnAzMethod());
// //
// // }
// //
// // selectionProblem(controller){
// //   controller.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length));
// //   return controller;
// // }
