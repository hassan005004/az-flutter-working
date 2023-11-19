// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import 'package:example/helper/config.dart';
// import 'package:example/widgets/common_widget.dart';
//
// class AzDropDownFormField extends StatelessWidget{
//
//   AzDropDownFormField(this.context, this._label, {required this.initialValue, required this.list, this.listType = 1});
//
//   BuildContext context;
//   String _label = '';
//   String initialValue = '';
//   List list;
//   int listType;
//   void Function(String?)? _onChanged;
//   List<TextInputFormatter>? inputType;
//   TextInputType keyboardType = TextInputType.none;
//
//
//   // initialValue(String value){
//   //   _initialValue = value;
//   // }
//   // list(dynamic list){
//   //   _list = list;
//   // }
//
//   type(String number){
//     keyboardType = TextInputType.number;
//     inputType = [
//       FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
//     ];
//     return this;
//   }
//
//   onChanged(void Function(String?)? onChanged){
//     _onChanged = onChanged;
//     return this;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         label(_label),
//         gapY(5),
//         Container(
//           height: 30,
//           child: DropdownButtonFormField(
//             isExpanded: true,
//             decoration: InputDecoration(
//               contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: main_one_color, width: 2.0),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.black, width: 1.0),
//               ),
//             ),
//             // Initial Value
//             value: initialValue,
//             // Down Arrow Icon
//             icon: const Icon(Icons.keyboard_arrow_down),
//             // Array list of items
//             items: (listType == 1)
//                 ? list as List<DropdownMenuItem<String>>
//                 : list as List<DropdownMenuItem<String>>,
//             onChanged: _onChanged,
//           ),
//         ),
//       ],
//     );
//   }
// }
