// import 'package:ahc_visiting_patient_area/helpers/package/widget.dart';
// import 'package:flutter/material.dart';
//
// import 'container.dart';
//
// // not testef
// extension AzTextBuilder on SnackBar {
//   get data => null;
//
//   AzSnackBar az() => AzSnackBar(data ?? "");
// }
//
// class AzSnackBar extends AzContainer {
//   Widget? _widget;
//   final String data;
//   // final Key key;
//
//   AzSnackBar(
//       this.data, {
//         Key? key,
//       });
//
//
//   build(context) => internalBuild(
//       SnackBar(
//         content: Text(data),
//         // backgroundColor: _backgroundColor,
//         // elevation: _elevation,
//         // margin: _margin,
//         // padding,
//         // shape,
//         // behavior: ,
//         // width: ,
//         // action: SnackBarAction(
//         //   label: 'Undo',
//         //   onPressed: () {
//         //     // Some code to undo the change.
//         //   },
//         // ),
//         duration: Duration(seconds: 5),
//         // animation,
//
//         // void Function() onVisible
//       )
//   );
//
//   show(BuildContext context){
//     helperSnackBar(context,_widget);
//   }
//
//   helperSnackBar(context,child) {
//     // ScaffoldMessenger.of(context).showSnackBar(_widget);
//   }
//
//   Az method() => Az(
//     Builder(
//       builder: (context) => build(context),
//     ),
//     key,
//   );
//
// }
// //
// // import 'package:ahc_visiting_patient_area/helpers/package/widget.dart';
// // import 'package:flutter/material.dart';
// //
// // import 'helpers/HexColor.dart';
// //
// // class AzSnackBar extends Az{
// //   final Widget _child;
// //   final Key key;
// //   final BuildContext _context;
// //   Color _backgroundColor = color("#000000").withOpacity(0.7);
// //   double _elevation = 0.0;
// //
// //   AzSnackBar(
// //       this._context, this._child, {
// //         this.key,
// //       });
// //
// //   show([int val = 1]){
// //     if(val == 1)
// //       helperSnackBar(_context, _child);
// //   }
// //
// //   helperSnackBar(context,child) {
// //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //       content: child,
// //       backgroundColor: _backgroundColor,
// //       elevation: _elevation,
// //       // margin: _margin,
// //       // padding,
// //       // shape,
// //       // behavior: ,
// //       // width: ,
// //       // action: SnackBarAction(
// //       //   label: 'Undo',
// //       //   onPressed: () {
// //       //     // Some code to undo the change.
// //       //   },
// //       // ),
// //       duration: Duration(seconds: 5),
// //       // animation,
// //
// //         // void Function() onVisible
// //     ));
// //   }
// // }