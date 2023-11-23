import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;

class Responsive {
  // new lines
  static orientation(context){
    return MediaQuery.of(context).orientation;
  }

  static width(context){
    return MediaQuery.of(context).size.width;
  }

  static height(context){
    return MediaQuery.of(context).size.height;
  }

  // sm mean sm, md and lg
  // md mean md and lg
  // lg mean lg and xl
  // xl mean xl


  // check only one time device nature

  // old lines
  // static bool xs(context) {
  //   final size = MediaQuery.of(context).size.width;
  //   if (size > 0) { //650
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  static bool sm(context) {
    final size = MediaQuery.of(context).size.width;
    if (size < 650) { //650
      return true;
    } else {
      return false;
    }
  }

  static bool md(context) {
    final size = MediaQuery.of(context).size.width;
    if (size >= 650 && size < 1024) {
      return true;
    } else {
      return false;
    }
  }

  static bool lg(context) {
    final size = MediaQuery.of(context).size.width;
    if (size >= 1024 && size < 1200) {
      return true;
    } else {
      return false;
    }
  }

  static bool xl(context) {
    final size = MediaQuery.of(context).size.width;
    if (size >= 1200) {
      return true;
    } else {
      return false;
    }
  }

  static deviceType(){
    // final size = MediaQuery.of(context).size.width;
    // var pixelRatio = window.devicePixelRatio;

    //Size in physical pixels
    // var physicalScreenSize = window.physicalSize;
    // var physicalWidth = physicalScreenSize.width;
    // var physicalHeight = physicalScreenSize.height;

    //Size in logical pixels
    // var logicalScreenSize = window.physicalSize / pixelRatio;
    // var logicalWidth = logicalScreenSize.width;
    // var logicalHeight = logicalScreenSize.height;

    //Padding in physical pixels
    // var padding = window.padding;

    //Safe area paddings in logical pixels
    // var paddingLeft = window.padding.left / window.devicePixelRatio;
    // var paddingRight = window.padding.right / window.devicePixelRatio;
    // var paddingTop = window.padding.top / window.devicePixelRatio;
    // var paddingBottom = window.padding.bottom / window.devicePixelRatio;

    //Safe area in logical pixels
    // var safeWidth = logicalWidth - paddingLeft - paddingRight;
    // var safeHeight = logicalHeight - paddingTop - paddingBottom;

    // if (safeWidth < 768) { //650
    //   return "sm";
    // }

    // if (safeWidth >= 768 && safeWidth < 992) {
    //   return "md";
    // }

    // if (safeWidth >= 992 && safeWidth < 1200) {
    //   return "lg";
    // }

    // if (safeWidth >= 1200) {
    //   return "xl";
    // }

    return "null";

  }

}

// // Small devices (landscape phones, 576px and up)
// @media (min-width: 576px) { ... }
//
// // Medium devices (tablets, 768px and up)
// @media (min-width: 768px) { ... }
//
// // Large devices (desktops, 992px and up)
// @media (min-width: 992px) { ... }
//
// // Extra large devices (large desktops, 1200px and up)
// @media (min-width: 1200px) { ... }