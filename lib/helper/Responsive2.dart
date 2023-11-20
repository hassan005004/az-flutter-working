// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
//
// class Responsive2 {
//   // static bool xs(context) {
//   //   final size = MediaQuery.of(context).size.width;
//   //   if (size > 0) { //650
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
//   // }
//   //MediaQuery.of(context).orientation == Orientation.landscape;
//   static orientation(context){
//     return MediaQuery.of(context).orientation;
//   }
//
//   static width(context){
//     return MediaQuery.of(context).size.width;
//   }
//
//   static height(context){
//     return MediaQuery.of(context).size.height;
//   }
//
//   static bool sm(context) {
//     final size = MediaQuery.of(context).size.width;
//     if (size < 650) { //650
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   static bool md(context) {
//     final size = MediaQuery.of(context).size.width;
//     if (size >= 650 && size < 1024) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   static bool lg(context) {
//     final size = MediaQuery.of(context).size.width;
//     if (size >= 1024 && size < 1200) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   static bool xl(context) {
//     final size = MediaQuery.of(context).size.width;
//     if (size >= 1200) {
//       return true;
//     } else {
//       return false;
//     }
//   }
//
// }