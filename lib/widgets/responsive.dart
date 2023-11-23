import '../helper/extensions.dart';
import 'package:flutter/cupertino.dart';

import '../helper/config.dart';
import '../helper/responseive.dart';

// ignore: must_be_immutable
class AzResponsive extends StatelessWidget{

  /// This function is ~~~
  ///
  /// The [num] must be non-null ~~
  ///
  ///
  Widget child;

  AzResponsive(
      this.child, {
        Key? key,
      }) : super(key: key);

  /// * This function is use to make responsive ui
  ///
  /// * Parameter sizes values should have spaces like 'col-sm-1 col-md-2'
  ///
  /// * Supported values are col-*, col-sm-*, col-md-*, col-lg-*, col-xl-*
  ///
  /// * \* star represent 1 to 12
  ///
  Widget col(String sizes){

  // order of sizes col-*, col-sm-*, col-md-*, col-lg-*, col-xl-*

  // Print.p1(sizes.trim());
  // int indexOfCurrentDevice = deviceTyeList.indexOf(deviceType);
  // int indexOfTargetDevice = deviceTyeList.indexOf(targetDevice);

  // trim extra spaces
  String sizesTrim = sizes.trim();

  List<String> sizesArray = sizesTrim.split(" ");

  List sizesDevicesArray = []; //['_','_sm','_md','_lg','_xl'];
  List sizesValuesArray = []; //[0, 1, 2, 3, 4, 5];


  // sizesArray.forEach((String size) {
  for(int i = 0; i < sizesArray.length; ++i) {
    String size = sizesArray[i];
    // print(size);
    List<String> partsArray = size.split("-");
    // print(partsArray);
    // print(partsArray[0]); // ignore
    String sizeDevices = partsArray.length == 2
        ? ""
        : partsArray[1]; // device sm, md, lg, xl
    int sizeValues = int.parse(partsArray.length == 3
        ? partsArray[2]
        : partsArray[1]); // sizes 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12
    sizesDevicesArray.add(sizeDevices);
    sizesValuesArray.add(sizeValues);
  }
  // });

  int checkDeviceExistsInSizes = sizesDevicesArray.indexOf(deviceType);
  int? intGetSizeToApply;
  if(checkDeviceExistsInSizes > 0){
    //  exists
    intGetSizeToApply = sizesValuesArray[checkDeviceExistsInSizes];
  }else{
    //  not exists
    // now find below of target
    // String s = "_" + deviceType;
    int checkDeviceNotExistsInSizes = deviceTyeList.indexOf(deviceType);
    // print(sizesDevicesArray.toString());
    // print(checkDeviceNotExistsInSizes);
    for(int loopI = checkDeviceNotExistsInSizes; loopI >= 0; --loopI){
      String findinBelowOfTargetString = deviceTyeList[loopI];
      // print(findinBelowOfTargetString);

      int findinBelowOfTargetInt = sizesDevicesArray.indexOf(findinBelowOfTargetString);
      if(findinBelowOfTargetInt != -1){
        intGetSizeToApply = sizesValuesArray[findinBelowOfTargetInt];
        break;
      }
    }
  }

  child = FractionallySizedBox(
      key:key,
      widthFactor: 0.0833 * intGetSizeToApply!.toDouble(), // 0.0833 width of 1 one col
      // heightFactor: val,
      child: child
  );

  // Print.p1(intGetSizeToApply.toString());
  // col-sm-* col-md-* col-lg-* col-xl-*


  // if(deviceType == 'xl'){
  //   // deviceType type lg activate +
  // }
  //
  // if(deviceType == 'sm'){
  //   // device sms activate
  // }
  // if(deviceType == 'md'){
  //
  // }
  // if(deviceType == 'lg'){
  //
  // }

  return this;
}

  Widget helperSm(BuildContext context, double val){
    if(deviceType != 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
      // double width = MediaQuery.of(context).size.width*val;
      // print(width);
      // child = SizedBox(width: width.toPrecision(2), child: child);
      child = FractionallySizedBox(
          key:key,
          widthFactor: val,
          // heightFactor: val,
          child: child
      );
    }
    return child;
  }

  /// * Alternate to col method for sm
  AzResponsive sm1(BuildContext context) {
    child = helperSm(context, 0.0833*1);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm2(BuildContext context) {
    child = helperSm(context, 0.0833*2);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm3(BuildContext context) {
    child = helperSm(context, 0.0833*3);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm4(BuildContext context) {
    child = helperSm(context, 0.0833*4);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm5(BuildContext context) {
    child = helperSm(context, 0.0833*5);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm6(BuildContext context) {
    child = helperSm(context, 0.0833*6);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm7(BuildContext context) {
    child = helperSm(context, 0.0833*7);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm8(BuildContext context) {
    child = helperSm(context, 0.0833*8);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm9(BuildContext context) {
    child = helperSm(context, 0.0833*9);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm10(BuildContext context) {
    child = helperSm(context, 0.0833*10);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm11(BuildContext context) {
    child = helperSm(context, 0.0833*11);
    return this;
  }
  /// * Alternate to col method for sm
  AzResponsive sm12(BuildContext context) {
    child = helperSm(context, 0.0833*12);
    return this;
  }

  Widget helperMd(BuildContext context, double val){
    if((Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
      // double width = MediaQuery.of(context).size.width*val;
      // // print(">>>> W "+width.toString());
      // // print(">>>> V "+val.toString());
      // // child = SizedBox(width: width.toPrecision(2), child: child);
      child = FractionallySizedBox(
          key:key,
          widthFactor: val,
          // heightFactor: val,
          child: child
      );
    }else{
      child = child;
    }
    return child;
  }

  /// * Alternate to col method for md
  AzResponsive md1(BuildContext context) {
    child = helperMd(context, 0.0833*1);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md2(BuildContext context) {
    child = helperMd(context, 0.0833*2);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md3(BuildContext context) {
    child = helperMd(context, 0.0833*3);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md4(BuildContext context) {
    child = helperMd(context, 0.0833*4);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md5(BuildContext context) {
    child = helperMd(context, 0.0833*5);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md6(BuildContext context) {
    child = helperMd(context, 0.0833*6);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md7(BuildContext context) {
    child = helperMd(context, 0.0833*7);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md8(BuildContext context) {
    child = helperMd(context, 0.0833*8);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md9(BuildContext context) {
    child = helperMd(context, 0.0833*9);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md10(BuildContext context) {
    child = helperMd(context, 0.0833*10);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md11(BuildContext context) {
    child = helperMd(context, 0.0833*11);
    return this;
  }
  /// * Alternate to col method for md
  AzResponsive md12(BuildContext context) {
    child = helperMd(context, 0.0833*12);
    return this;
  }

  Widget helperLg(BuildContext context, double val){
    if((Responsive.xl(context) || Responsive.lg(context))){
      double width = MediaQuery.of(context).size.width*val;
      child = SizedBox(width: width.toPrecision(2), child: child);
    }else{
      child = child;
    }
    return child;
  }

  /// * Alternate to col method for lg
  AzResponsive lg1(BuildContext context) {
    child = helperLg(context, 0.0833*1);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg2(BuildContext context) {
    child = helperLg(context, 0.0833*2);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg3(BuildContext context) {
    child = helperLg(context, 0.0833*3);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg4(BuildContext context) {
    child = helperLg(context, 0.0833*4);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg5(BuildContext context) {
    child = helperLg(context, 0.0833*5);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg6(BuildContext context) {
    child = helperLg(context, 0.0833*6);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg7(BuildContext context) {
    child = helperLg(context, 0.0833*7);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg8(BuildContext context) {
    child = helperLg(context, 0.0833*8);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg9(BuildContext context) {
    child = helperLg(context, 0.0833*9);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg10(BuildContext context) {
    child = helperLg(context, 0.0833*10);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg11(BuildContext context) {
    child = helperLg(context, 0.0833*11);
    return this;
  }
  /// * Alternate to col method for lg
  AzResponsive lg12(BuildContext context) {
    child = helperLg(context, 0.0833*12);
    return this;
  }

  Widget helperXl(BuildContext context, double val){
    if((Responsive.xl(context))){
      double width = MediaQuery.of(context).size.width*val;
      child = SizedBox(width: width.toPrecision(2), child: child);
    }else{
      child = child;
    }
    return child;
  }

  /// * Alternate to col method for xl
  AzResponsive xl1(BuildContext context) {
    child = helperXl(context, 0.0833*1);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl2(BuildContext context) {
    child = helperXl(context, 0.0833*2);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl3(BuildContext context) {
    child = helperXl(context, 0.0833*3);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl4(BuildContext context) {
    child = helperXl(context, 0.0833*4);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl5(BuildContext context) {
    child = helperXl(context, 0.0833*5);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl6(BuildContext context) {
    child = helperXl(context, 0.0833*6);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl7(BuildContext context) {
    child = helperXl(context, 0.0833*7);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl8(BuildContext context) {
    child = helperXl(context, 0.0833*8);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl9(BuildContext context) {
    child = helperXl(context, 0.0833*9);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl10(BuildContext context) {
    child = helperXl(context, 0.0833*10);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl11(BuildContext context) {
    child = helperXl(context, 0.0833*11);
    return this;
  }
  /// * Alternate to col method for xl
  AzResponsive xl12(BuildContext context) {
    child = helperXl(context, 0.0833*12);
    return this;
  }

  toBuild() {
    return SizedBox(
      key: key,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return toBuild();
  }
}