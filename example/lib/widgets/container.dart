import 'dart:ui' as ui;

import '../helper/config.dart';
import 'center.dart';
import 'positioned.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'gesture_detector.dart';

extension ExtAzContainer on Container {
  AzContainer azContainer() => AzContainer(widget: this);
}
// ignore: must_be_immutable
class AzContainer extends StatelessWidget {
  Widget widget;

  // color
  Color? _bgColor;
  Color? _bgColorForeground;

  // border
  Border? _border;
  Border? _borderForeground;

  // padding
  EdgeInsets? _padding;

  // margin
  EdgeInsets? _margin;

  // radius
  BorderRadius? _radius;
  BorderRadius? _radiusForeground;

  // height width
  double? _width;
  double? _height;
  final double _minWidth = 0.0;
  final double _maxWidth = double.infinity;
  final double _minHeight = 0.0;
  final double _maxHeight = double.infinity;

  // clipBehavior
  Clip _clipBehavior = Clip.none;

  // constraints
  BoxConstraints? _constraints;

  // alignment
  final double _alignmentX = 0;
  final double _alignmentY = 0;
  Alignment? _alignment;

  // transform
  Matrix4? _transform;

  // transformAlignment
  dynamic _transformAlignment;

  // image
  DecorationImage? _decorationImage;
  DecorationImage? _decorationImageForeground;

  // gradient
  Gradient? _gradient;
  Gradient? _gradientForeground;

  // backgroundBlendMode
  BlendMode? _backgroundBlendMode;
  BlendMode? _backgroundBlendModeForeground;

  // shaodw
  List<BoxShadow> _boxShadow = [];
  List<BoxShadow> _boxShadowForeground = [];

  // border
  bool _borderLeft = false;
  bool _borderTop = false;
  bool _borderRight = false;
  bool _borderBottom = false;
  Color _borderColor = Colors.transparent;
  double _borderWidth = 1.0;
  BorderStyle _borderStyle = BorderStyle.solid;
  double _strokeAlign = BorderSide.strokeAlignInside;
  bool _borderLeftForeground = false;
  bool _borderTopForeground = false;
  bool _borderRightForeground = false;
  bool _borderBottomForeground = false;
  Color _borderColorForeground = Colors.transparent;
  double _borderWidthForeground = 1.0;
  BorderStyle _borderStyleForeground = BorderStyle.solid;
  double _strokeAlignForeground = BorderSide.strokeAlignInside;

  // shape
  BoxShape _shape = BoxShape.rectangle;
  BoxShape _shapeForeground = BoxShape.rectangle;


  AzContainer({this.widget = const SizedBox.shrink(), Key? key}): super(key: key);


  // padding
  AzContainer p(double padding){
    _padding = EdgeInsets.all(padding);
    return this;
  }
  AzContainer pOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}){
    _padding = EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);
    return this;
  }
  AzContainer pLTRB(left,top,right,bottom){
    _padding = EdgeInsets.fromLTRB(left,top,right,bottom);
    return this;
  }
  AzContainer pSymmetric({required double h, required double v}){
    _padding = EdgeInsets.symmetric(horizontal: h, vertical: v);
    return this;
  }
  AzContainer px(double x){
    _padding = EdgeInsets.symmetric(horizontal: x);
    return this;
  }
  AzContainer py(double y){
    _padding = EdgeInsets.symmetric(vertical: y);
    return this;
  }
  // margin
  AzContainer m(double margin){
    _margin = EdgeInsets.all(margin);
    return this;
  }
  AzContainer mOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}){
    _margin = EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);
    return this;
  }
  AzContainer mLTRB(left,top,right,bottom){
    _margin = EdgeInsets.fromLTRB(left,top,right,bottom);
    return this;
  }
  AzContainer mSymmetric({required double h, required double v}){
    _margin = EdgeInsets.symmetric(horizontal: h, vertical: v);
    return this;
  }
  AzContainer mx(double x){
    _margin = EdgeInsets.symmetric(horizontal: x);
    return this;
  }
  AzContainer my(double y){
    _margin = EdgeInsets.symmetric(vertical: y);
    return this;
  }

  // height width
  AzContainer width(double width){
    _width = width;
    return this;
  }
  AzContainer wFull(){
    ui.PlatformDispatcher platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    ui.FlutterView flutterView = platformDispatcher.views.first;
    // Access the physical size of the screen
    Size screenSize = flutterView.physicalSize / flutterView.devicePixelRatio;

    double width = screenSize.width;
    _width = width;
    return this;
  }
  AzContainer height(double height){
    _height = height;
    return this;
  }
  AzContainer minWidth(minWidth){
    _constraints = BoxConstraints(minWidth: minWidth, maxWidth:_maxWidth, minHeight:_minHeight, maxHeight:_maxHeight);
    return this;
  }
  AzContainer maxWidth(maxWidth){
    _constraints = BoxConstraints(minWidth: _minWidth, maxWidth:maxWidth, minHeight:_minHeight, maxHeight:_maxHeight);
    return this;
  }
  AzContainer minHeight(minHeight){
    _constraints = BoxConstraints(minWidth: _minWidth, maxWidth:_maxWidth, minHeight:minHeight, maxHeight:_maxHeight);
    return this;
  }
  AzContainer maxHeight(maxHeight){
    _constraints = BoxConstraints(minWidth: _minWidth, maxWidth:_maxWidth, minHeight:_minHeight, maxHeight:maxHeight);
    return this;
  }

  // alignment
  AzContainer alignment(Alignment alignment){
    _alignment = alignment;
    return this;
  }
  AzContainer alignmentXY(x,y){
    _alignment = Alignment(_alignmentX,_alignmentY);
    return this;
  }
  AzContainer alignmentX(x){
    _alignment = Alignment(x,_alignmentY);
    return this;
  }
  AzContainer alignmentY(y){
    _alignment = Alignment(_alignmentX,y);
    return this;
  }
  AzContainer alignmentCenter(){
    _alignment = Alignment.center;
    return this;
  }
  AzContainer alignmentTopLeft(){
    _alignment = Alignment.topLeft;
    return this;
  }
  AzContainer alignmentTopCenter(){
    _alignment = Alignment.topCenter;
    return this;
  }
  AzContainer alignmentTopRight(){
    _alignment = Alignment.topRight;
    return this;
  }
  AzContainer alignmentBottomLeft(){
    _alignment = Alignment.bottomLeft;
    return this;
  }
  AzContainer alignmentBottomCenter(){
    _alignment = Alignment.bottomCenter;
    return this;
  }
  AzContainer alignmentBottomRight(){
    _alignment = Alignment.bottomRight;
    return this;
  }

  // transform
  AzContainer transform(Matrix4 matrix4){
    _transform = matrix4;
    return this;
  }

  // transformAlignment
  AzContainer transformAlignment(transformAlignment){
    _transformAlignment = transformAlignment;
    return this;
  }

  // clipBehavior
  AzContainer clipBehavior(Clip clipBehavior){
    _clipBehavior = clipBehavior;
    return this;
  }

  // radius
  AzContainer radius(double radius){
    _radius = BorderRadius.circular(radius);
    return this;
  }
  AzContainer radiusPosition(double topLeft, double topRight, double bottomRight, double bottomLeft){
    _radius = BorderRadius.only(
      topLeft:Radius.circular(topLeft),
      topRight:Radius.circular(topRight),
      bottomRight:Radius.circular(bottomRight),
      bottomLeft:Radius.circular(bottomLeft),
    );
    return this;
  }
  AzContainer radiusLeft(double double){
    _radius = BorderRadius.only(
      topLeft:Radius.circular(double),
      bottomLeft:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusTop(double double){
    _radius = BorderRadius.only(
      topLeft:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusRight(double double){
    _radius = BorderRadius.only(
      bottomRight:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusBottom(double double){
    _radius = BorderRadius.only(
      bottomRight:Radius.circular(double),
      bottomLeft:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusTopLeftBottomRight(double double){
    _radius = BorderRadius.only(
      topLeft:Radius.circular(double),
      bottomRight:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusBottomLeftTopRight(double double){
    _radius = BorderRadius.only(
      bottomLeft:Radius.circular(double),
      topRight:Radius.circular(double),
    );
    return this;
  }
  AzContainer radiusCircle(double double){
    _radius = const BorderRadius.only(
      topLeft:Radius.circular(1000),
      topRight:Radius.circular(1000),
      bottomRight:Radius.circular(1000),
      bottomLeft:Radius.circular(1000),
    );
    return this;
  }

  AzContainer radiusForeground(double radius){
    _radiusForeground = BorderRadius.circular(radius);
    return this;
  }

  // color
  AzContainer bg(Color color){
    _bgColor = color;
    return this;
  }
  AzContainer bgForeground(Color color){
    _bgColorForeground = color;
    return this;
  }

  // gradient
  gradient(Gradient gradient){
    _gradient = gradient;
    return this;
  }
  gradientForeground(Gradient gradient){
    _gradientForeground = gradient;
    return this;
  }

  // backgroundBlendMode
  backgroundBlendMode(BlendMode blendMode){
    _backgroundBlendMode = blendMode;
    return this;
  }
  backgroundBlendModeForeground(BlendMode blendMode){
    _backgroundBlendModeForeground = blendMode;
    return this;
  }

  // decoration image
  decorationImage(dynamic decorationImage){
    _decorationImage = DecorationImage(image: decorationImage);
    return this;
  }
  decorationAssetsImage(image){
    _decorationImage = DecorationImage(image: AssetImage(image));
    return this;
  }
  decorationNetworkImage(image, scale){
    _decorationImage = DecorationImage(image: NetworkImage(image, scale: scale));
    return this;
  }
  decorationImageForeground(dynamic decorationImage){
    _decorationImageForeground = DecorationImage(image: decorationImage);
    return this;
  }
  decorationAssetsImageForeground(image){
    _decorationImageForeground = DecorationImage(image: AssetImage(image));
    return this;
  }
  decorationNetworkImageForeground(image, scale){
    _decorationImageForeground = DecorationImage(image: NetworkImage(image, scale: scale));
    return this;
  }

  // shadow
  boxShadow(List<BoxShadow> boxShadow){
    _boxShadow = boxShadow;
    return this;
  }
  boxShadowForeground(List<BoxShadow> boxShadow){
    _boxShadowForeground = boxShadow;
    return this;
  }

  // border
  Border borderSet(){
    return Border(
      left: _borderLeft ? borderSideSet() : BorderSide.none,
      top: _borderTop ? borderSideSet() : BorderSide.none,
      right: _borderRight ? borderSideSet() : BorderSide.none,
      bottom: _borderBottom ? borderSideSet() : BorderSide.none,
    );
  }
  BorderSide borderSideSet(){
    return BorderSide(
      color: _borderColor,
      width: _borderWidth,
      style: _borderStyle,
      strokeAlign: _strokeAlign,
    );
  }
  AzContainer border(Color color, double width, BorderStyle style, double strokeAlign){
    _border = Border.all(
        color: color,
        width: width,
        style: style,
        strokeAlign: strokeAlign
    );
    return this;
  }
  AzContainer borderColor(Color color){
    _borderColor = color;
    // _border = borderSet();
    return this;
  }
  AzContainer borderWidth(double width){
    _borderWidth = width;
    // _border = borderSet();
    return this;
  }
  AzContainer borderStyle(BorderStyle borderStyle){
    _borderStyle = borderStyle;
    // _border = borderSet();
    return this;
  }
  AzContainer borderStrokeAlign(double strokeAlign){
    _strokeAlign = strokeAlign;
    // _border = borderSet();
    return this;
  }
  AzContainer borderFromLTRB(bool left, bool top, bool right, bool bottom){
    if(_borderColor == Colors.transparent){
      _borderColor = Colors.black;
    }
    _borderLeft = left;
    _borderTop = top;
    _borderRight = right;
    _borderBottom  = bottom;

    _border = borderSet();
    return this;
  }
  Border borderSetForeground(){
    return Border(
      left: _borderLeftForeground ? borderSideSetForeground() : BorderSide.none,
      top: _borderTopForeground ? borderSideSetForeground() : BorderSide.none,
      right: _borderRightForeground ? borderSideSetForeground() : BorderSide.none,
      bottom: _borderBottomForeground ? borderSideSetForeground() : BorderSide.none,
    );
  }
  BorderSide borderSideSetForeground(){
    return BorderSide(
      color: _borderColorForeground,
      width: _borderWidthForeground,
      style: _borderStyleForeground,
      strokeAlign: _strokeAlignForeground,
    );
  }
  AzContainer borderForeground(Color color, double width, BorderStyle style, double strokeAlign){
    _borderForeground = Border.all(
        color: color,
        width: width,
        style: style,
        strokeAlign: strokeAlign
    );
    return this;
  }
  AzContainer borderColorForeground(Color color){
    _borderColorForeground = color;
    // _border = borderSet();
    return this;
  }
  AzContainer borderWidthForeground(double width){
    _borderWidthForeground = width;
    // _border = borderSet();
    return this;
  }
  AzContainer borderStyleForeground(BorderStyle borderStyle){
    _borderStyleForeground = borderStyle;
    // _border = borderSet();
    return this;
  }
  AzContainer borderStrokeAlignForeground(double strokeAlign){
    _strokeAlignForeground = strokeAlign;
    // _border = borderSet();
    return this;
  }
  AzContainer borderFromLTRBForeground(bool left, bool top, bool right, bool bottom){
    if(_borderColorForeground == Colors.transparent){
      _borderColorForeground = Colors.black;
    }
    _borderLeftForeground = left;
    _borderTopForeground = top;
    _borderRightForeground = right;
    _borderBottomForeground  = bottom;

    _borderForeground = borderSet();
    return this;
  }

  // shape
  shape(BoxShape shape){
    _shape = shape;
    return this;
  }
  shapeCircle(){
    _shape = BoxShape.circle;
    return this;
  }
  shapeForeground(BoxShape shape){
    _shapeForeground = shape;
    return this;
  }
  shapeCircleForeground(){
    _shapeForeground = BoxShape.circle;
    return this;
  }

  /*
  * Methods for work easy
  * */

  // cards
  AzContainer cardV1(Color backgroundColor){
    _bgColor = backgroundColor;
    _radius = funBorderRadius();
    _boxShadow = [funBoxShadow()];
    return this;
  }
  AzContainer primaryCard(){
    cardV1(AzUtlis().colorPrimary);
    return this;
  }
  AzContainer dangerCard(){
    cardV1(AzUtlis().colorDanger);
    return this;
  }
  AzContainer successCard(){
    cardV1(AzUtlis().colorSuccess);
    return this;
  }
  AzContainer lightCard(){
    cardV1(AzUtlis().colorLight);
    return this;
  }
  AzContainer darkCard(){
    cardV1(AzUtlis().colorDark);
    return this;
  }
  AzContainer infoCard(){
    cardV1(AzUtlis().colorInfo);
    return this;
  }
  AzContainer secondaryCard(){
    cardV1(AzUtlis().colorSecondary);
    return this;
  }

  // border colors
  AzContainer primaryBorder(){
    _borderColor = AzUtlis().colorPrimary;
    return this;
  }
  AzContainer dangerBorder(){
    _borderColor = AzUtlis().colorDanger;
    return this;
  }
  AzContainer successBorder(){
    _borderColor = AzUtlis().colorSuccess;
    return this;
  }
  AzContainer lightBorder(){
    _borderColor = AzUtlis().colorLight;
    return this;
  }
  AzContainer darkBorder(){
    _borderColor = AzUtlis().colorDark;
    return this;
  }
  AzContainer infoBorder(){
    _borderColor = AzUtlis().colorInfo;
    return this;
  }
  AzContainer warningBorder(){
    _borderColor = AzUtlis().colorWarning;
    return this;
  }
  AzContainer secondaryBorder(){
    _borderColor = AzUtlis().colorSecondary;
    return this;
  }


  // some more functions for recalling
  BorderRadius funBorderRadius(){
    return const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12)
    );
  }

  BoxShadow funBoxShadow(){
    return BoxShadow(
        color: Colors.grey.withOpacity(0.125),
        spreadRadius: 1,
        blurRadius: 2,
        offset: const Offset(0, 0), // changes position of shadow
      );
  }

  toBuild() {
    return Container(
        key: key,
        decoration: BoxDecoration(
          color: _bgColor,
          image: _decorationImage,
          border: _border,
          borderRadius: _radius,
          boxShadow: _boxShadow,
          gradient: _gradient,
          backgroundBlendMode: _backgroundBlendMode,
          shape: _shape,
        ),
        foregroundDecoration: BoxDecoration(
          color: _bgColorForeground,
          image: _decorationImageForeground,
          border: _borderForeground,
          borderRadius: _radiusForeground,
          boxShadow: _boxShadowForeground,
          gradient: _gradientForeground,
          backgroundBlendMode: _backgroundBlendModeForeground,
          shape: _shapeForeground,
        ),
        alignment: _alignment,
        width: _width,
        height: _height,
        constraints: _constraints,
        padding: _padding,
        margin: _margin,
        transform: _transform,
        transformAlignment: _transformAlignment,
        clipBehavior: _clipBehavior,
        child: widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }


  AzCard card() => AzCard(toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());


}
