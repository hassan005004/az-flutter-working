import 'dart:ui' as ui;
import 'responsive.dart';

import 'ink_well.dart';
import 'text.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';
import '../helper/config.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';
//
// textColor
// disabledTextColor
// color
// disabledColor
// focusColor
// hoverColor
// highlightColor*
// splashColor

// ignore: must_be_immutable
class AzButton extends StatelessWidget {
  final dynamic widgetOrString;
  // void Function()? onPressed;
  VoidCallback? _onPressed;
  VoidCallback? _onLongPress;
  void Function(bool)? _onHover;
  void Function(bool)? _onFocusChange;

  Color? _textColor;
  FontWeight? _fontWeight;

  MaterialStateProperty<Color?>? _overlayColor;
  MaterialStateProperty<Color?>? _backgroundColor;
  MaterialStateProperty<Color?>? _foregroundColor;
  MaterialStateProperty<Color?>? _shadowColor;
  MaterialStateProperty<Color?>? _surfaceTintColor;
  MaterialStateProperty<Color?>? _iconColor;
  MaterialStateProperty<double?>? _iconSize;
  MaterialStateProperty<BorderSide?>? _side;
  MaterialStateProperty<OutlinedBorder?>? _shape;
  MaterialStateProperty<MouseCursor?>? _mouseCursor;
  MaterialStateProperty<double?>? _elevation;
  MaterialStateProperty<EdgeInsets?>? _padding;
  MaterialStateProperty<Size?>? _minimumSize;
  MaterialStateProperty<Size?>? _fixedSize;
  MaterialStateProperty<Size?>? _maximumSize;

  /*
  * Default properties for work easy
  * */
  double _borderWidth = 1;
  Color _borderColor = AzUtlis().colorDefault;
  double _width = double.minPositive;
  double _height = double.minPositive;
  double _minWidth = double.minPositive;
  double _minHeight = double.minPositive;
  double _maxWidth = double.maxFinite;
  double _maxHeight = double.maxFinite;
  //
  // // Color borderColor = Colors.transparent;//border_color;
  // Color _bgColor = Colors.transparent;//main_one_color.withOpacity(0.125);
  // double _opacity = 0.25;
  // Color _textColor = Colors.black;
  // EdgeInsets padding = EdgeInsets.symmetric(horizontal: AzUtlis().paddingX, vertical: AzUtlis().paddingY);
  // // double radius = radius_one;
  // FontWeight fontWeight = FontWeight.bold;
  // double _fontSize = 13;
  // double? _width;
  // double? _height;

  FocusNode? _focusNode;
  bool _autofocus = false;
  Clip _clipBehavior = Clip.none;
  Alignment? _alignment;


  AzButton(this.widgetOrString, {Key? key}) : super(key: key);

  // fs(double size){
  //   _fontSize = size;
  //   return this;
  // }
  //
  // color(Color color){
  //   // borderColor = color;
  //   _bgColor = color.withOpacity(_opacity);
  //   // textColor = color;
  //   return this;
  // }
  //
  // textColor(Color color){
  //   _textColor = color;
  //   return this;
  // }
  //
  // bgColor(Color color){
  //   _bgColor = color.withOpacity(_opacity);
  //   return this;
  // }
  //
  // opacity(opacity){
  //   _opacity = opacity;
  //   return this;
  // }
  //
  // full(){
  //   _width = double.maxFinite;//MediaQuery.of(context).size.width;
  //   return this;
  // }
  //
  // width(double width){
  //   _width = width;
  //   return this;
  // }
  //
  // height(double height){
  //   _height = height;
  //   return this;
  // }


  AzButton overlayColor(Color color){
    _overlayColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton backgroundColor(Color color){
    _backgroundColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton foregroundColor(Color color){
    _foregroundColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton shadowColor(Color color){
    _shadowColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton surfaceTintColor(Color color){
    _surfaceTintColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton iconColor(Color color){
    _iconColor = MaterialStateProperty.all(color);
    return this;
  }
  AzButton iconSize(double double){
    _iconSize = MaterialStateProperty.all(double);
    return this;
  }
  AzButton side(BorderSide borderSide){
    _side = MaterialStateProperty.all(borderSide);
    return this;
  }
  // AzButton shape(OutlineInputBorder? OutlinedBorder){
  //   _shape = MaterialStateProperty.all(OutlinedBorder);
  //   return this;
  // }
  AzButton radius(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(double),
            topRight:Radius.circular(double),
            bottomRight:Radius.circular(double),
            bottomLeft:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusPosition(double topLeft, double topRight, double bottomRight, double bottomLeft){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(topLeft),
            topRight:Radius.circular(topRight),
            bottomRight:Radius.circular(bottomRight),
            bottomLeft:Radius.circular(bottomLeft),
          )
      ),
    );
    return this;
  }
  AzButton radiusLeft(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(double),
            bottomLeft:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusTop(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(double),
            topRight:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusRight(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight:Radius.circular(double),
            topRight:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusBottom(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight:Radius.circular(double),
            bottomLeft:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusTopLeftBottomRight(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(double),
            bottomRight:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusBottomLeftTopRight(double double){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft:Radius.circular(double),
            topRight:Radius.circular(double),
          )
      ),
    );
    return this;
  }
  AzButton radiusCircle(){
    _shape = MaterialStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(1000),
            topRight:Radius.circular(1000),
            bottomRight:Radius.circular(1000),
            bottomLeft:Radius.circular(1000),
          )
      ),
    );
    return this;
  }

  AzButton mousecursor(MouseCursor? MouseCursor){
    _mouseCursor = MaterialStateProperty.all(MouseCursor);
    return this;
  }

  AzButton onPressed(VoidCallback? callback){
    _onPressed = callback;
    return this;
  }
  AzButton onLongPress(VoidCallback? callback){
    _onLongPress = callback;
    return this;
  }
  AzButton onHover(void Function(bool)? callback){
    _onHover = callback;
    return this;
  }
  AzButton onFocusChange(void Function(bool)? callback){
    _onFocusChange = callback;
    return this;
  }

  AzButton elevation(double elevation){
    _elevation = MaterialStateProperty.all(elevation);
    return this;
  }

  AzButton p(double padding){
    _padding = MaterialStateProperty.all(EdgeInsets.all(padding));
    return this;
  }
  AzButton pOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}){
    _padding = MaterialStateProperty.all(EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));
    return this;
  }
  AzButton pLTRB(left,top,right,bottom){
    _padding = MaterialStateProperty.all(EdgeInsets.fromLTRB(left,top,right,bottom));
    return this;
  }
  AzButton pSymmetric({required double h, required double v}){
    _padding = MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: h, vertical: v));
    return this;
  }
  AzButton px({required double x}){
    _padding = MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: x));
    return this;
  }
  AzButton py({required double y}){
    _padding = MaterialStateProperty.all(EdgeInsets.symmetric(vertical: y));
    return this;
  }

  AzButton fixedSize(Size size){
    _fixedSize = MaterialStateProperty.all(size);
    return this;
  }
  AzButton minimumSize(Size size){
    _minimumSize = MaterialStateProperty.all(size);
    return this;
  }
  AzButton maximumSize(Size size){
    _maximumSize = MaterialStateProperty.all(size);
    return this;
  }

  AzButton focusNode(FocusNode focusNode){
    _focusNode = focusNode;
    return this;
  }

  AzButton autofocus(){
    _autofocus = true;
    return this;
  }

  AzButton clipBehavior(Clip clipBehavior){
    _clipBehavior = clipBehavior;
    return this;
  }

  AzButton clipAntiAlias(){
    _clipBehavior = Clip.antiAlias;
    return this;
  }
  AzButton clipAntiAliasWithSaveLayer(){
    _clipBehavior = Clip.antiAliasWithSaveLayer;
    return this;
  }
  AzButton clipHardEdge(){
    _clipBehavior = Clip.hardEdge;
    return this;
  }


  /*
  * Methods for work easy
  * */
  AzButton outline(){
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: _borderColor
    ));
    return this;
  }
  AzButton wFull(){
    ui.PlatformDispatcher platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    ui.FlutterView flutterView = platformDispatcher.views.first;
    // Access the physical size of the screen
    Size screenSize = flutterView.physicalSize / flutterView.devicePixelRatio;

    double width = screenSize.width;
    _width = width;
    _fixedSize = MaterialStateProperty.all(Size(width, _height));
    return this;
  }
  AzButton heightFull(){
    ui.PlatformDispatcher platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    ui.FlutterView flutterView = platformDispatcher.views.first;
    // Access the physical size of the screen
    Size screenSize = flutterView.physicalSize / flutterView.devicePixelRatio;

    double height = screenSize.height;
    _height = height;
    _fixedSize = MaterialStateProperty.all(Size(_width, height));
    return this;
  }
  AzButton width(double width){
    _width = width;
    _fixedSize = MaterialStateProperty.all(Size(width, _height));
    return this;
  }
  AzButton height(double height){
    _height = height;
    _fixedSize = MaterialStateProperty.all(Size(_width, height));
    return this;
  }
  // minWidth(double width){
  //   _width = width;
  //   _minimumSize = MaterialStateProperty.all(Size(width, _height));
  //   return this;
  // }
  // minHeight(double height){
  //   _height = height;
  //   _minimumSize = MaterialStateProperty.all(Size(_width, height));
  //   return this;
  // }

  AzButton minWidth(double width){
    _minWidth = width;
    _minHeight = _minHeight < 40 ? 40 : _minHeight;
    _minimumSize = MaterialStateProperty.all(Size(width, _minHeight));
    return this;
  }
  AzButton minHeight(double height){
    _minHeight = height;
    _minWidth = _minWidth < 10 ? 10 : _minWidth;
    _minimumSize = MaterialStateProperty.all(Size(_minWidth, height));
    return this;
  }
  AzButton maxWidth(double width){
    _maxWidth = width;
    _maximumSize = MaterialStateProperty.all(Size(width, _maxHeight));
    return this;
  }
  AzButton maxHeight(double height){
    _maxHeight = height;
    _maximumSize = MaterialStateProperty.all(Size(_maxWidth, height));
    return this;
  }

  AzButton solidThree(color, colorOverlay){
    // Color color = AzUtlis().colorPrimary;
    // Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    _backgroundColor ??= MaterialStateProperty.all(color.withOpacity(0.2));
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    // _side = MaterialStateProperty.all(BorderSide(
    //     width: 0,
    //     color: color
    // ));

    // set text property
    _textColor = color;
    _fontWeight = FontWeight.bold;

    return this;
  }
  AzButton primarySolidThree(){
    Color color = AzUtlis().colorPrimary;
    Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton secondarySolidThree(){
    Color color = AzUtlis().colorSecondary;
    Color colorOverlay = AzUtlis().colorSecondaryOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton infoSolidThree(){
    Color color = AzUtlis().colorInfo;
    Color colorOverlay = AzUtlis().colorInfoOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton warningSolidThree(){
    Color color = AzUtlis().colorWarning;
    Color colorOverlay = AzUtlis().colorWarningOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton dangerSolidThree(){
    Color color = AzUtlis().colorDanger;
    Color colorOverlay = AzUtlis().colorDangerOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton darkSolidThree(){
    Color color = AzUtlis().colorDark;
    Color colorOverlay = AzUtlis().colorDarkOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton lightSolidThree(){
    Color color = AzUtlis().colorLight;
    Color colorOverlay = AzUtlis().colorLightOverlay;
    solidThree(color, colorOverlay);
    return this;
  }
  AzButton successSolidThree(){
    Color color = AzUtlis().colorSuccess;
    Color colorOverlay = AzUtlis().colorSuccessOverlay;
    solidThree(color, colorOverlay);
    return this;
  }


  AzButton solidTwo(color, colorOverlay, borderWidth){
    if(_borderWidth != 1){
      _borderWidth = borderWidth;
    }
    // Color color = AzUtlis().colorPrimary;
    // Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    _backgroundColor ??= MaterialStateProperty.all(color.withOpacity(0.2));
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));

    // set text property
    _textColor = color;
    _fontWeight = FontWeight.bold;

    return this;
  }
  AzButton primarySolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorPrimary;
    Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton secondarySolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorSecondary;
    Color colorOverlay = AzUtlis().colorSecondaryOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton infoSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorInfo;
    Color colorOverlay = AzUtlis().colorInfoOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton warningSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorWarning;
    Color colorOverlay = AzUtlis().colorWarningOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton dangerSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorDanger;
    Color colorOverlay = AzUtlis().colorDangerOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton darkSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorDark;
    Color colorOverlay = AzUtlis().colorDarkOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton lightSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorLight;
    Color colorOverlay = AzUtlis().colorLightOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }
  AzButton successSolidTwo(){
    _borderWidth = 2;
    Color color = AzUtlis().colorSuccess;
    Color colorOverlay = AzUtlis().colorSuccessOverlay;
    solidTwo(color, colorOverlay, _borderWidth);
    return this;
  }

  AzButton primarySolid(){
    Color color = AzUtlis().colorPrimary;
    Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    _backgroundColor ??= MaterialStateProperty.all(color);
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton primaryOutline(){
    Color color = AzUtlis().colorPrimary;
    Color colorOverlay = AzUtlis().colorPrimaryOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton secondarySolid(){
    Color color = AzUtlis().colorSecondary;
    Color colorOverlay = AzUtlis().colorSecondaryOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton secondaryOutline(){
    Color color = AzUtlis().colorSecondary;
    Color colorOverlay = AzUtlis().colorSecondaryOverlay;
    _backgroundColor ??= MaterialStateProperty.all(color);
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton infoSolid(){
    Color color = AzUtlis().colorInfo;
    Color colorOverlay = AzUtlis().colorInfoOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton infoOutline(){
    Color color = AzUtlis().colorInfo;
    Color colorOverlay = AzUtlis().colorInfoOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton warningSolid(){
    Color color = AzUtlis().colorWarning;
    Color colorOverlay = AzUtlis().colorWarningOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton warningOutline(){
    Color color = AzUtlis().colorWarning;
    Color colorOverlay = AzUtlis().colorWarningOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton dangerSolid(){
    Color color = AzUtlis().colorDanger;
    Color colorOverlay = AzUtlis().colorDangerOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton dangerOutline(){
    Color color = AzUtlis().colorDanger;
    Color colorOverlay = AzUtlis().colorDangerOverlay;
    _backgroundColor ??= MaterialStateProperty.all(color);
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton darkSolid(){
    Color color = AzUtlis().colorDark;
    Color colorOverlay = AzUtlis().colorDarkOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton darkOutline(){
    Color color = AzUtlis().colorDark;
    Color colorOverlay = AzUtlis().colorDarkOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton successSolid(){
    Color color = AzUtlis().colorSuccess;
    Color colorOverlay = AzUtlis().colorSuccessOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton successOutline(){
    Color color = AzUtlis().colorSuccess;
    Color colorOverlay = AzUtlis().colorSuccessOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton lightSolid(){
    Color color = AzUtlis().colorLight;
    Color colorOverlay = AzUtlis().colorLightOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }
  AzButton lightOutline(){
    Color color = AzUtlis().colorLight;
    Color colorOverlay = AzUtlis().colorLightOverlay;
    _overlayColor ??= MaterialStateProperty.all(colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: color
    ));
    return this;
  }

  AzButton alignment(Alignment alignment){
    _alignment = alignment;
    return this;
  }

  AzButton centerLeft(){
    _alignment = Alignment.centerLeft;
    return this;
  }
  AzButton center(){
    _alignment = Alignment.center;
    return this;
  }
  AzButton centerRight(){
    _alignment = Alignment.centerRight;
    return this;
  }
  AzButton topLeft(){
    _alignment = Alignment.topLeft;
    return this;
  }
  AzButton topCenter(){
    _alignment = Alignment.topCenter;
    return this;
  }
  AzButton topRight(){
    _alignment = Alignment.topRight;
    return this;
  }
  AzButton bottomLeft(){
    _alignment = Alignment.bottomLeft;
    return this;
  }
  AzButton bottomCenter(){
    _alignment = Alignment.bottomCenter;
    return this;
  }
  AzButton bottomRight(){
    _alignment = Alignment.bottomRight;
    return this;
  }

  toBuild(){
    return TextButton(
      key: key,
      onPressed: _onPressed,
      onLongPress: _onLongPress,
      onHover: _onHover,
      onFocusChange: _onFocusChange,
      style: ButtonStyle(
        // MaterialStateProperty<TextStyle?>? textStyle,
        textStyle: MaterialStateProperty.all(TextStyle(
          // color: Colors.black,
          fontWeight: _fontWeight
        )),
        overlayColor: _overlayColor,
        backgroundColor: _backgroundColor,
        foregroundColor: _foregroundColor,
        shadowColor: _shadowColor,
        surfaceTintColor: _surfaceTintColor,
        elevation: _elevation,
        padding: _padding,
        maximumSize: _maximumSize,
        fixedSize: _fixedSize,
        minimumSize: _minimumSize,
        iconColor: _iconColor,
        iconSize: _iconSize,
        side: _side,
        shape: _shape,
        mouseCursor: _mouseCursor,
        // VisualDensity? visualDensity,
        // MaterialTapTargetSize? tapTargetSize,
        // Duration? animationDuration,
        // bool? enableFeedback,
        alignment: _alignment,
        // InteractiveInkFeatureFactory? splashFactory,
      ),
      focusNode: _focusNode,
      autofocus: _autofocus,
      clipBehavior: _clipBehavior,
      // MaterialStatesController? statesController,
      // bool? isSemanticButton = true,
      //AzText(widgetOrString).color(_textColor!)
      child: widgetOrString.runtimeType.toString() == 'String'
          ? _textColor == null
            ? AzText(widgetOrString)//.color(_textColor!)
            : Text(widgetOrString,
                style: TextStyle(
                  color: _textColor
                ),)
          : widgetOrString,
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
