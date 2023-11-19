

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:az_ui/helper/config.dart';

class ImgUrl extends StatelessWidget{
  BuildContext context;
  String url;
  double? _width;
  double? _height;


  ImgUrl(this.context, this.url);

  width(double width){
    _width = width;
    return this;
  }

  height(double height){
    _height = height;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    if(url == 'null' || url == ''){
      url = 'https://chillbar.zahidaz.com/image/dummy/general.jpg';
    }
    return CachedNetworkImage(
      imageUrl: url,
      height: _height,
      placeholder: (context, url) => Center(
          child: SizedBox(
              height:35,
              width: 35,
              child: CircularProgressIndicator()
          )
      ),
      errorWidget: (context, url, error) => Image.asset('assets/placeholder/category.jpg', height: _height,),
    );
  }
}

class ImgAsset extends StatelessWidget{
  BuildContext context;
  String path;
  double? _width;
  double? _height;


  ImgAsset(this.context, this.path);

  width(double width){
    _width = width;
    return this;
  }

  height(double height){
    _height = height;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, height: _height,);
  }
}
