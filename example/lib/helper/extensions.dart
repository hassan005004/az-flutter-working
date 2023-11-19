// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// extension dateTimeExt on DateTime {
//   toStandard(){
//     var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
//     var inputDate = inputFormat.parse(this.toString());
//     var outputFormat = DateFormat('dd-MM-yyyy hh:mm:ss a');
//     return outputFormat.format(inputDate);
//   }
//
//   toDate(){
//     var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
//     var inputDate = inputFormat.parse(this.toString());
//     var outputFormat = DateFormat('dd-MM-yyyy');
//     return outputFormat.format(inputDate);
//   }
//
//   toTime(){
//     var inputFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
//     var inputDate = inputFormat.parse(this.toString());
//     var outputFormat = DateFormat('HH:mm:ss a');
//     return outputFormat.format(inputDate);
//   }
// }
//
// extension intExt on int {
//   toMakeZeroNull(){
//     if(this == 0){
//       return null;
//     }
//     return this;
//   }
//
//   toMakeZeroEmptyString(){
//     if(this == 0){
//       return "";
//     }
//     return this;
//   }
// }
//
// extension stringExt on String {
//   int toInt(){
//     if(this == ""){
//       return 0;
//     }
//
//     return int.parse(this);
//   }
//
//   String first(){
//     return this[0].toUpperCase();
//   }
// }
//
// extension listExt on List {
//   // DropdownMenuItem(
//   // value: item.name,
//   // child: Text(item.name),
//   // )
//   toDropDown(){
//     // print(this);
//     List<DropdownMenuItem<String>>? dropdownModel = [];
//     for(int i = 0; i < this.length; ++i){
//       dropdownModel.add(DropdownMenuItem(
//         value: this[i].name,
//         child: Text(this[i].name.toString()),
//       ));
//     }
//     return this;
//   }
// }
