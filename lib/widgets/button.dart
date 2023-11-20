import 'package:az_ui/widgets/positioned.dart';
import 'package:flutter/cupertino.dart';
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

class AzButton extends StatelessWidget{
  Widget child;
  // void Function()? onPressed;
  VoidCallback? _onPressed;
  VoidCallback? _onLongPress;
  void Function(bool)? _onHover;
  void Function(bool)? _onFocusChange;

  MaterialStateProperty<Color?>? _overlayColor;
  MaterialStateProperty<Color?>? _backgroundColor;
  MaterialStateProperty<Color?>? _foregroundColor;
  MaterialStateProperty<Color?>? _shadowColor;
  MaterialStateProperty<Color?>? _surfaceTintColor;
  MaterialStateProperty<Color?>? _iconColor;
  MaterialStateProperty<BorderSide?>? _side;
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


  AzButton(this.child);

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
  AzButton side(BorderSide borderSide){
    _side = MaterialStateProperty.all(borderSide);
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
  AzButton widthFull(){
    Size screenSize = WidgetsBinding.instance.window.physicalSize;
    double width = screenSize.width;
    _width = width;
    _fixedSize = MaterialStateProperty.all(Size(width, _height));
    return this;
  }
  AzButton heightFull(){
    Size screenSize = WidgetsBinding.instance.window.physicalSize;
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
  AzButton primarySolid(){
    Color _color = AzUtlis().colorPrimary;
    Color _colorOverlay = AzUtlis().colorPrimaryOverlay;
    _backgroundColor ??= MaterialStateProperty.all(_color);
    _overlayColor ??= MaterialStateProperty.all(_colorOverlay);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: _color
    ));
    return this;
  }
  AzButton primaryOutline(){
    Color _color = AzUtlis().colorPrimary;
    Color _colorOverlay = AzUtlis().colorPrimaryOverlay;
    _overlayColor ??= MaterialStateProperty.all(_colorOverlay);
    _foregroundColor ??= MaterialStateProperty.all(_color);
    _side = MaterialStateProperty.all(BorderSide(
        width: _borderWidth,
        color: _color
    ));
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
        // textStyle: MaterialStateProperty.all(TextStyle(
        //   color: Colors.white
        // )),
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
        // MaterialStateProperty<double?>? iconSize,
        side: _side,
        // MaterialStateProperty<OutlinedBorder?>? shape,
        // MaterialStateProperty<MouseCursor?>? mouseCursor,
        // VisualDensity? visualDensity,
        // MaterialTapTargetSize? tapTargetSize,
        // Duration? animationDuration,
        // bool? enableFeedback,
        // AlignmentGeometry? alignment,
        // InteractiveInkFeatureFactory? splashFactory,
      ),
      // FocusNode? focusNode,
      // bool autofocus = false,
      // Clip clipBehavior = Clip.none,
      // MaterialStatesController? statesController,
      // bool? isSemanticButton = true,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: this.toBuild());
  AzCard card() => AzCard(this.toBuild());
  AzCenter center() => AzCenter(this.toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(this.toBuild());
  AzPositioned positioned() => AzPositioned(this.toBuild());

}
