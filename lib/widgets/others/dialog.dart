// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class AzShowDialog {
//   Widget _child;
//   // final Key key;
//   final BuildContext _context;
//
//   AzShowDialog(
//       this._context, this._child, {
//         Key? key,
//       });
//
//   show([int val = 1]){
//     if(val == 1)
//       _showDialog(_context, _child);
//   }
//
//
//   _showDialog(context,child) async{
//     showDialog<String>(
//       context: context,
//       builder: (BuildContext context){
//         return new CupertinoAlertDialog(
//           title: new Text('Please select'),
//           // actions: <Widget>[,
//           // ],
//           content: new SingleChildScrollView(
//             child: new Material(
//               child: Text( "as"),
//             ),
//           ),
//         );
//       },
//       barrierDismissible: false,
//     );
//   }
// }