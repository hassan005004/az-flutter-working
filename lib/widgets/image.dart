import 'positioned.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'center.dart';
import 'container.dart';
import 'gesture_detector.dart';

extension ExtImage on AssetImage {
  // AzImage azImageAsset() => AzImage(assetName);
  // AzImageNetwrok azImageNetwork() => AzImageNetwrok(data ?? "");
}
// ignore: must_be_immutable
class AzImage extends StatelessWidget {
  dynamic data;
  Widget? _widget;
  double _scale = 1.0;
  double? _width;
  double? _height;
  BoxFit? _fit;
  Alignment _alignment = Alignment.center;
  ImageRepeat _repeat = ImageRepeat.noRepeat;
  Color? _color;

  Widget Function(BuildContext, Object, StackTrace?)? _errorBuilder = (BuildContext context, Object exception, StackTrace? stackTrace) {
    return const Icon(Icons.info_outline, color: Colors.red,);
  };

  Widget Function(BuildContext, Widget, int?, bool)? _frameBuilder = (BuildContext context, Widget widget, int? int_, bool bool_) {
    if(bool_ == true){
      return widget;
    }
    return const Icon(Icons.info_outline, color: Colors.red,);
  };

  Widget Function(BuildContext, Widget, ImageChunkEvent?)? _loadingBuilder = (BuildContext context, Widget child, ImageChunkEvent? imageChunkEvent) {
    if (imageChunkEvent == null) {
      return child;
    }
    return const CircularProgressIndicator();
  }; // onlu n

  AzImage({
    Key? key,
  }) : super(key: key);

  AzImage frameBuilder(Widget Function(BuildContext, Widget, int?, bool)? frameBuilder){
    _frameBuilder = frameBuilder;
    return this;
  }
  AzImage loadingBuilder(Widget Function(BuildContext, Object, ImageChunkEvent?)? loadingBuilder){
    _loadingBuilder = loadingBuilder;
    return this;
  }
  AzImage errorBuilder(Widget Function(BuildContext, Object, StackTrace?)? errorBuilder){
    _errorBuilder = errorBuilder;
    return this;
  }

  AzImage scale(double double){
    _scale = double;
    return this;
  }
  AzImage w(double double){
    _width = double;
    return this;
  }
  AzImage h(double double){
    _height = double;
    return this;
  }

  AzImage fit(BoxFit boxFit){
    _fit = boxFit;
    return this;
  }
  AzImage contain(){
    _fit = BoxFit.contain;
    return this;
  }
  AzImage cover(){
    _fit = BoxFit.cover;
    return this;
  }
  AzImage fill(){
    _fit = BoxFit.fill;
    return this;
  }
  AzImage fitWidth(){
    _fit = BoxFit.fitWidth;
    return this;
  }
  AzImage fitHeight(){
    _fit = BoxFit.fitHeight;
    return this;
  }
  AzImage scaleDown(){
    _fit = BoxFit.scaleDown;
    return this;
  }

  AzImage topLeft(){
    _alignment = Alignment.topLeft;
    return this;
  }
  AzImage topCenter(){
    _alignment = Alignment.topCenter;
    return this;
  }
  AzImage topRight(){
    _alignment = Alignment.topRight;
    return this;
  }
  AzImage centerLeft(){
    _alignment = Alignment.centerLeft;
    return this;
  }
  AzImage centerCenter(){
    _alignment = Alignment.center;
    return this;
  }
  AzImage centerRight(){
    _alignment = Alignment.centerRight;
    return this;
  }
  AzImage bottomLeft(){
    _alignment = Alignment.bottomLeft;
    return this;
  }
  AzImage bottomCenter(){
    _alignment = Alignment.bottomCenter;
    return this;
  }
  AzImage bottomRight(){
    _alignment = Alignment.bottomRight;
    return this;
  }

  AzImage reapeat(){
    _repeat = ImageRepeat.repeat;
    return this;
  }
  AzImage reapeatX(){
    _repeat = ImageRepeat.repeatX;
    return this;
  }
  AzImage reapeatY(){
    _repeat = ImageRepeat.repeatY;
    return this;
  }

  AzImage color(Color color){
    _color = color;
    return this;
  }

  AzImage asset(String data){
    _widget = Image.asset(data,
      key: key,
      // AssetBundle? bundle,
      frameBuilder: _frameBuilder, // Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
      errorBuilder: _errorBuilder, // Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
      // String? semanticLabel,
      // bool excludeFromSemantics = false,
      scale: _scale,
      width: _width,
      height: _height,
      color: _color,
      // Animation<double>? opacity,
      // BlendMode? colorBlendMode,
      fit: _fit,
      alignment: _alignment,
      repeat: _repeat,
      // Rect? centerSlice,
      // bool matchTextDirection = false,
      // bool gaplessPlayback = false,
      // bool isAntiAlias = false,
      // String? package,
      // FilterQuality filterQuality = FilterQuality.low,
      // int? cacheWidth,
      // int? cacheHeight,
    );

    return this;
  }

  AzImage network(String data){
    _widget = Image.network(data,
      key: key,
      scale: _scale,
      frameBuilder: _frameBuilder, // // Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
      loadingBuilder: _loadingBuilder, // // Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
      errorBuilder: _errorBuilder, // // Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
      // String? semanticLabel,
      // bool excludeFromSemantics = false,
      width: _width,
      height: _height,
      color: _color,
      // Animation<double>? opacity,
      // BlendMode? colorBlendMode,
      fit: _fit,
      alignment: _alignment,
      repeat: _repeat,
      // Rect? centerSlice,
      // bool matchTextDirection = false,
      // bool gaplessPlayback = false,
      // FilterQuality filterQuality = FilterQuality.low,
      // bool isAntiAlias = false,
      // Map<String, String>? headers,
      // int? cacheWidth,
      // int? cacheHeight,
    );

    return this;
  }



  toBuild() {
    // return Image.asset(data);
    return _widget;
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }

  AzContainer container() => AzContainer(widget: toBuild());
  AzCard card() => AzCard(toBuild());
  AzCenter center() => AzCenter(toBuild());
  AzGestureDetector gestureDetector() => AzGestureDetector(toBuild());
  AzPositioned positioned() => AzPositioned(toBuild());

}
