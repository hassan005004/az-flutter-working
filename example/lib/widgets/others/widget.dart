// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'constants.dart';
// import 'helpers/HexColor.dart';
// import 'helpers/Responsive.dart';
// import 'helpers/extensions.dart';
// import 'helpers/print.dart';
//
// class Az extends StatelessWidget {
//   Widget _widget;
//   Key? key;
//
//   // added
//   // margin
//   // padding
//   // rotate
//
//
//
//   double _borderWidth = dBorderWidth;
//   Color _borderColor = hex_color(cBorder);
//   Color _borderTopColor = hex_color(cBorder);
//   Color _borderRightColor = hex_color(cBorder);
//   Color _borderBottomColor = hex_color(cBorder);
//   Color _borderLeftColor = hex_color(cBorder);
//   double _borderTopWidth = dBorderWidth;
//   double _borderRightWidth = dBorderWidth;
//   double _borderBottomWidth = dBorderWidth;
//   double _borderLeftWidth = dBorderWidth;
//   BorderStyle _borderTopStyle = BorderStyle.solid;
//   BorderStyle _borderRightStyle = BorderStyle.solid;
//   BorderStyle _borderBottomStyle = BorderStyle.solid;
//   BorderStyle _borderLeftStyle = BorderStyle.solid;
//   double _borderInitialize = 1;
//   double _borderRadius = 0;
//
//   double _roundedTop = 0;
//   double _roundedBottom = 0;
//   double _roundedLeft = 0;
//   double _roundedRight = 0;
//   double _roundedTopLeft = 0;
//   double _roundedTopRight = 0;
//   double _roundedBottomLeft = 0;
//   double _roundedBottomRight = 0;
//
//
//   Color _color = hex_color("000000");
//   Color _backgroundColor = hex_color("FFFFFF");
//   int _isDisabled = 0;
//   int _isActive = 0;
//
//   Az([this._widget = const SizedBox.shrink(), this.key]);
//
//   @override
//   build(context) {
//     if (key != null) return SizedBox(key: key, child: _widget);
//
//     return _widget;
//   }
//
//   // new widget
//   Widget helper_margin({String? targetDevice = 'none', double top = 0, double right = 0, double bottom = 0, double left = 0}) {
//     // int indexOfCurrentDevice = deviceTyeList.indexOf(deviceType);
//     // int indexOfTargetDevice = deviceTyeList.indexOf(targetDevice);
//     // if(indexOfTargetDevice <= indexOfCurrentDevice){
//     //
//     // }
//     if(targetDevice == deviceType || targetDevice == 'none'){
//       // _widget = Padding(
//       //   padding: EdgeInsets.only(top:top,right:right,bottom:bottom,left:left),
//       //   child: _widget,
//       // );
//       _widget = Container(
//         margin: EdgeInsets.only(top:top,right:right,bottom:bottom,left:left),
//         child: _widget,
//       );
//     }
//     return _widget;
//   }
//   Az margin(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, top:double, right:double, bottom:double, left:double);
//     return this;
//   }
//   Az marginX(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, left:double, right:double);
//     return this;
//   }
//   Az marginY(double double, [String? targetDevice = 'none']){
//     print(targetDevice);
//     _widget = helper_margin(targetDevice:targetDevice, top: double, bottom:double);
//     return this;
//   }
//   Az marginTop(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, top:double);
//     return this;
//   }
//   Az marginLeft(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, left:double);
//     return this;
//   }
//   Az marginBottom(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, bottom:double);
//     return this;
//   }
//   Az marginRight(double, [String? targetDevice = 'none']){
//     _widget = helper_margin(targetDevice:targetDevice, right:double);
//     return this;
//   }
//   Widget helper_padding({String? targetDevice = 'none', double top = 0, double right = 0, double bottom = 0, double left = 0}) {
//     if(targetDevice == deviceType || targetDevice == 'none'){
//       _widget = Padding(
//         padding: EdgeInsets.only(top:top,right:right,bottom:bottom,left:left),
//         child: _widget,
//       );
//     }
//     return _widget;
//   }
//   Az padding(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, top:double, right:double, bottom:double, left:double);
//     return this;
//   }
//   Az paddingX(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, left:double, right:double);
//     return this;
//   }
//   Az paddingY(double double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, top: double, bottom:double);
//     return this;
//   }
//   Az paddingTop(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, top:double);
//     return this;
//   }
//   Az paddingLeft(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, left:double);
//     return this;
//   }
//   Az paddingBottom(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, bottom:double);
//     return this;
//   }
//   Az paddingRight(double, [String? targetDevice = 'none']){
//     _widget = helper_padding(targetDevice:targetDevice, right:double);
//     return this;
//   }
//
//
//   // Widget heleper_visiblity({String? targetDevice = 'none'}) {
//   //   if (targetDevice == deviceType) {
//   //     _widget = Visibility(
//   //         visible:false,
//   //         child: _widget
//   //     );
//   //   }
//   //   return _widget;
//   // }
//   Az none([String? targetDevice = 'none']){
//     if (targetDevice == deviceType || targetDevice == 'none') {
//       _widget = Visibility(
//           visible: false,
//           child: _widget
//       );
//     }
//     return this;
//   }
//
//   Az visibility(bool bool){
//     _widget = Visibility(
//         visible: bool,
//         child: _widget
//     );
//     return this;
//   }
//
//   Az transform(double angle){
//     _widget = Transform.rotate(
//       angle: angle,
//       child: _widget,
//     );
//     return this;
//   }
//
//   // imli hajomula
//   // cake rusk pao
//   // cigrate
//   // milk
//
//
//
//   Az m(double val) {
//     _widget = Container(
//       margin: EdgeInsets.all(val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az mx(double val) {
//     _widget = Container(
//       margin: EdgeInsets.symmetric(horizontal: val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az my(double val) {
//     _widget = Container(
//       margin: EdgeInsets.symmetric(vertical: val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az mt(double val) {
//     _widget = Container(
//       margin: EdgeInsets.only(top:val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az mr(double val) {
//     _widget = Container(
//       margin: EdgeInsets.only(right:val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az mb(double val) {
//     _widget = Container(
//       margin: EdgeInsets.only(bottom:val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az ml(double val) {
//     _widget = Container(
//       margin: EdgeInsets.only(left: val),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az p(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.all(padding),
//       child: _widget,
//     );
//     return this;
//   }
//
//   Az px(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.symmetric(horizontal: padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az py(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.symmetric(vertical: padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az pt(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.only(top:padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az pr(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.only(right:padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az pb(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.only(bottom: padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az pl(double padding) {
//     _widget = Padding(
//       padding: EdgeInsets.only(left:padding),
//       child: _widget,
//     );
//
//     return this;
//   }
//
//   Az fullHeight() {
//     _widget = SizedBox(height: 200, child: _widget);
//
//     return this;
//   }
//
//
//   // background color
//   Az bg(String colorHexCode){
//     _backgroundColor = hex_color(colorHexCode);
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgPrimary(){
//     _backgroundColor = colorPrimary;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgSuccess(){
//     _backgroundColor = colorSuccess;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgSecondary(){
//     _backgroundColor = colorSecondary;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgDanger(){
//     _backgroundColor = colorDanger;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgWarning(){
//     _backgroundColor = colorWarning;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgInfo(){
//     _backgroundColor = colorInfo;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgLight(){
//     _backgroundColor = colorLight;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgDark(){
//     _backgroundColor = colorDark;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az bgWhite(){
//     _backgroundColor = colorWhite;
//     _widget = helperBg(_widget);
//     return this;
//   }
//
//   Az disabled(int is_disabled){
//     if(is_disabled == 1) {
//       _isDisabled = 1;
//       return this;
//     }
//     return this;
//   }
//
//   Az active(int is_active){
//     if(is_active == 1) {
//       _isActive = 1;
//       return this;
//     }
//     return this;
//   }
//
//   Az active_border(int is_active){
//     if(is_active == 1) {
//       borderInfo();
//     }
//     return this;
//   }
//
//   Az active_bg(int is_active){
//     if(is_active == 1) {
//       bgSuccess();
//     }
//     return this;
//   }
//
//   Az active_bg_primary(int is_active){
//     if(is_active == 1) {
//       bgPrimary();
//     }
//     return this;
//   }
//
//
//   // radius
//   Az rounded([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _widget = helperRounded(_widget);
//     return this;
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.all(
//     //     Radius.circular(
//     //       val,
//     //     ),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedLg([double val = radiusLg]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.all(
//     //     Radius.circular(
//     //       val,
//     //     ),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedSm([double val = radiusSm]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.all(
//     //     Radius.circular(
//     //       val,
//     //     ),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedTop([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedTopRight = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     topLeft: Radius.circular(_roundedTop),
//     //     topRight: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedTopLeft([double val = radius]) {
//     _roundedTopLeft = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     topLeft: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//   Az roundedTopRight([double val = radius]) {
//     _roundedTopRight = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     topRight: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedRight([double val = radius]) {
//     _roundedTopRight = val;
//     _roundedBottomRight = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     bottomRight: Radius.circular(val),
//     //     topRight: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedBottom([double val = radius]) {
//     _roundedBottomLeft = val;
//     _roundedBottomRight= val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     bottomRight: Radius.circular(val),
//     //     bottomLeft: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedBottomLeft([double val = radius]) {
//     _roundedBottomLeft = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     bottomLeft: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedBottomRight([double val = radius]) {
//     _roundedBottomRight = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     bottomRight: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedLeft([double val = radius]) {
//     _roundedTopLeft = val;
//     _roundedBottomLeft = val;
//     _widget = helperRounded(_widget);
//     // _widget = ClipRRect(
//     //   borderRadius: BorderRadius.only(
//     //     topLeft: Radius.circular(val),
//     //     bottomLeft: Radius.circular(val),
//     //   ),
//     //   child: _widget,
//     // );
//     return this;
//   }
//
//   Az roundedCircle(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     double avg = ((width+height)/2)*0.50;
//     _widget = ClipRRect(
//       borderRadius: BorderRadius.horizontal(
//         left:Radius.circular((height+width)/2),
//         right:Radius.circular((height+width)/2),
//       ),
//       child: _widget,
//     );
//     return this;
//   }
//
//   // border
//   Az borderWidth([double val = dBorderWidth]) {
//     _borderWidth = _borderTopWidth = _borderRightWidth = _borderBottomWidth = _borderLeftWidth = val;
//     return this;
//   }
//
//   Az borderTopWidth([double val = dBorderWidth]){
//     _borderTopWidth = val;
//     return this;
//   }
//
//   Az borderRightWidth([double val = dBorderWidth]){
//     _borderRightWidth = val;
//     return this;
//   }
//
//   Az borderBottomWidth([double val = dBorderWidth]){
//     _borderBottomWidth = val;
//     return this;
//   }
//
//   Az borderLeftWidth([double val = dBorderWidth]){
//     _borderLeftWidth = val;
//     return this;
//   }
//
//   Az borderColor(String colorHexCode) {
//     _borderColor = _borderTopColor = _borderRightColor = _borderBottomColor = _borderLeftColor = hex_color(colorHexCode);
//     return this;
//   }
//
//   Az borderTopColor(String colorHexCode){
//     _borderTopColor = hex_color(colorHexCode);
//     return this;
//   }
//
//   Az borderRightColor(String colorHexCode){
//     _borderRightColor = hex_color(colorHexCode);
//     return this;
//   }
//
//   Az borderBottomColor(String colorHexCode){
//     _borderBottomColor = hex_color(colorHexCode);
//     return this;
//   }
//
//   Az borderLeftColor(String colorHexCode){
//     _borderLeftColor = hex_color(colorHexCode);
//     return this;
//   }
//
//
//   Az border(){
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderPrimary(){
//     _borderTopColor = hex_color(cPrimary);
//     _borderRightColor = hex_color(cPrimary);
//     _borderBottomColor = hex_color(cPrimary);
//     _borderLeftColor = hex_color(cPrimary);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderSecondary(){
//     _borderTopColor = hex_color(cSecondary);
//     _borderRightColor = hex_color(cSecondary);
//     _borderBottomColor = hex_color(cSecondary);
//     _borderLeftColor = hex_color(cSecondary);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderSuccess(){
//     _borderTopColor = hex_color(cSuccess);
//     _borderRightColor = hex_color(cSuccess);
//     _borderBottomColor = hex_color(cSuccess);
//     _borderLeftColor = hex_color(cSuccess);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderDanger(){
//     _borderTopColor = hex_color(cDanger);
//     _borderRightColor = hex_color(cDanger);
//     _borderBottomColor = hex_color(cDanger);
//     _borderLeftColor = hex_color(cDanger);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderWarning(){
//     _borderTopColor = hex_color(cWarning);
//     _borderRightColor = hex_color(cWarning);
//     _borderBottomColor = hex_color(cWarning);
//     _borderLeftColor = hex_color(cWarning);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderInfo(){
//     _borderTopColor = hex_color(cInfo);
//     _borderRightColor = hex_color(cInfo);
//     _borderBottomColor = hex_color(cInfo);
//     _borderLeftColor = hex_color(cInfo);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderLight(){
//     _borderTopColor = hex_color(cLight);
//     _borderRightColor = hex_color(cLight);
//     _borderBottomColor = hex_color(cLight);
//     _borderLeftColor = hex_color(cLight);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   Az borderDark(){
//     _borderTopColor = hex_color(cDark);
//     _borderRightColor = hex_color(cDark);
//     _borderBottomColor = hex_color(cDark);
//     _borderLeftColor = hex_color(cDark);
//     _widget = helperBorder(_widget);
//     return this;
//   }
//
//   // width
//   Az width(double val) {
//     _widget = SizedBox(width: val, child: _widget);
//     return this;
//   }
//
//   Widget widthMedia(String sizes){
//     // order of sizes col-*, col-sm-*, col-md-*, col-lg-*, col-xl-*
//
//     // Print.p1(sizes.trim());
//     // int indexOfCurrentDevice = deviceTyeList.indexOf(deviceType);
//     // int indexOfTargetDevice = deviceTyeList.indexOf(targetDevice);
//
//     // trim extra spaces
//     String sizesTrim = sizes.trim();
//
//     List<String> sizesArray = sizesTrim.split(" ");
//
//     List sizesDevicesArray = []; //['_','_sm','_md','_lg','_xl'];
//     List sizesValuesArray = []; //[0, 1, 2, 3, 4, 5];
//
//     int i = 0;
//     sizesArray.forEach((String size) {
//       // print(size);
//       List<String> partsArray = size.split("-");
//       // print(partsArray);
//       // print(partsArray[0]); // ignore
//
//       String sizeDevices = partsArray.length == 2 ? "" : partsArray[1]; // device sm, md, lg, xl
//       int sizeValues = int.parse(partsArray.length == 3 ? partsArray[2] : partsArray[1]); // sizes 1, 2, 4, 5, 6, 7, 8, 9, 10, 11, 12
//
//       sizesDevicesArray.add(sizeDevices);
//       sizesValuesArray.add(sizeValues);
//
//       // sizesDevicesArray[i] = sizeDevices;
//       // sizesValuesArray[i] = sizeValues;
//       // ++i;
//
//       // sizesArray.forEach((String size) {
//       //   int indexOfSize = deviceTyeList.indexOf(deviceType);
//       //   String indexOfSize = deviceTyeList.indexOf(deviceType);
//       //   print(size);
//       // });
//       // if (['xl', 'lg', 'md', 'sm', 'xs'].contains(pfx)) {
//       //   hiddenPerSize[pfx == 'xs' ? '' : pfx] = true;
//       // }
//     });
//
//     int checkDeviceExistsInSizes = sizesDevicesArray.indexOf(deviceType);
//     int? intGetSizeToApply;
//     if(checkDeviceExistsInSizes > 0){
//       //  exists
//       intGetSizeToApply = sizesValuesArray[checkDeviceExistsInSizes];
//     }else{
//       //  not exists
//       // now find below of target
//       // String s = "_" + deviceType;
//       int checkDeviceNotExistsInSizes = deviceTyeList.indexOf(deviceType);
//       // print(sizesDevicesArray.toString());
//       // print(checkDeviceNotExistsInSizes);
//       for(int loop_i = checkDeviceNotExistsInSizes; loop_i >= 0; --loop_i){
//         String findinBelowOfTargetString = deviceTyeList[loop_i];
//         // print(findinBelowOfTargetString);
//
//         int findinBelowOfTargetInt = sizesDevicesArray.indexOf(findinBelowOfTargetString);
//         if(findinBelowOfTargetInt != -1){
//           intGetSizeToApply = sizesValuesArray[findinBelowOfTargetInt];
//           break;
//         }
//       }
//     }
//
//     _widget = FractionallySizedBox(
//         key:key,
//         widthFactor: 0.0833 * intGetSizeToApply!.toDouble(), // 0.0833 width of 1 one col
//         // heightFactor: val,
//         child: _widget
//     );
//
//     // Print.p1(intGetSizeToApply.toString());
//     // col-sm-* col-md-* col-lg-* col-xl-*
//
//
//     // if(deviceType == 'xl'){
//     //   // deviceType type lg activate +
//     // }
//     //
//     // if(deviceType == 'sm'){
//     //   // device sms activate
//     // }
//     // if(deviceType == 'md'){
//     //
//     // }
//     // if(deviceType == 'lg'){
//     //
//     // }
//
//     return this;
//   }
//
//   Widget widthMediaSm(BuildContext context, double val){
//     if(deviceType != 'sm' && (Responsive.sm(context) || Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       // double width = MediaQuery.of(context).size.width*val;
//       // print(width);
//       // _widget = SizedBox(width: width.toPrecision(2), child: _widget);
//       _widget = FractionallySizedBox(
//           key:key,
//           widthFactor: val,
//           // heightFactor: val,
//           child: _widget
//       );
//     }
//     return _widget;
//   }
//
//   Az widthMediaColSm1(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*1);
//     return this;
//   }
//   Az widthMediaColSm2(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*2);
//     return this;
//   }
//   Az widthMediaColSm3(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*3);
//     return this;
//   }
//   Az widthMediaColSm4(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*4);
//     return this;
//   }
//   Az widthMediaColSm5(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*5);
//     return this;
//   }
//   Az widthMediaColSm6(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*6);
//     return this;
//   }
//   Az widthMediaColSm7(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*7);
//     return this;
//   }
//   Az widthMediaColSm8(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*8);
//     return this;
//   }
//   Az widthMediaColSm9(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*9);
//     return this;
//   }
//   Az widthMediaColSm10(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*10);
//     return this;
//   }
//   Az widthMediaColSm11(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*11);
//     return this;
//   }
//   Az widthMediaColSm12(BuildContext context) {
//     _widget = widthMediaSm(context, 0.0833*12);
//     return this;
//   }
//
//   Widget widthMediaMd(BuildContext context, double val){
//     if((Responsive.md(context) || Responsive.xl(context) || Responsive.lg(context))){
//       double width = MediaQuery.of(context).size.width*val;
//       // print(">>>> W "+width.toString());
//       // print(">>>> V "+val.toString());
//       // _widget = SizedBox(width: width.toPrecision(2), child: _widget);
//       _widget = FractionallySizedBox(
//           key:key,
//           widthFactor: val,
//           // heightFactor: val,
//           child: _widget
//       );
//     }else{
//       _widget = _widget;
//     }
//     return _widget;
//   }
//
//   Az widthMediaColMd1(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*1);
//     return this;
//   }
//   Az widthMediaColMd2(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*2);
//     return this;
//   }
//   Az widthMediaColMd3(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*3);
//     return this;
//   }
//   Az widthMediaColMd4(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*4);
//     return this;
//   }
//   Az widthMediaColMd5(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*5);
//     return this;
//   }
//   Az widthMediaColMd6(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*6);
//     return this;
//   }
//   Az widthMediaColMd7(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*7);
//     return this;
//   }
//   Az widthMediaColMd8(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*8);
//     return this;
//   }
//   Az widthMediaColMd9(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*9);
//     return this;
//   }
//   Az widthMediaColMd10(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*10);
//     return this;
//   }
//   Az widthMediaColMd11(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*11);
//     return this;
//   }
//   Az widthMediaColMd12(BuildContext context) {
//     _widget = widthMediaMd(context, 0.0833*12);
//     return this;
//   }
//
//   Widget widthMediaLg(BuildContext context, double val){
//     if((Responsive.xl(context) || Responsive.lg(context))){
//       double width = MediaQuery.of(context).size.width*val;
//       _widget = SizedBox(width: width.toPrecision(2), child: _widget);
//     }else{
//       _widget = _widget;
//     }
//     return _widget;
//   }
//
//   Az widthMediaColLg1(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*1);
//     return this;
//   }
//   Az widthMediaColLg2(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*2);
//     return this;
//   }
//   Az widthMediaColLg3(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*3);
//     return this;
//   }
//   Az widthMediaColLg4(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*4);
//     return this;
//   }
//   Az widthMediaColLg5(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*5);
//     return this;
//   }
//   Az widthMediaColLg6(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*6);
//     return this;
//   }
//   Az widthMediaColLg7(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*7);
//     return this;
//   }
//   Az widthMediaColLg8(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*8);
//     return this;
//   }
//   Az widthMediaColLg9(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*9);
//     return this;
//   }
//   Az widthMediaColLg10(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*10);
//     return this;
//   }
//   Az widthMediaColLg11(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*11);
//     return this;
//   }
//   Az widthMediaColLg12(BuildContext context) {
//     _widget = widthMediaLg(context, 0.0833*12);
//     return this;
//   }
//
//   Widget widthMediaXl(BuildContext context, double val){
//     if((Responsive.xl(context))){
//       double width = MediaQuery.of(context).size.width*val;
//       _widget = SizedBox(width: width.toPrecision(2), child: _widget);
//     }else{
//       _widget = _widget;
//     }
//     return _widget;
//   }
//
//   Az widthMediaColXl1(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*1);
//     return this;
//   }
//   Az widthMediaColXl2(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*2);
//     return this;
//   }
//   Az widthMediaColXl3(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*3);
//     return this;
//   }
//   Az widthMediaColXl4(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*4);
//     return this;
//   }
//   Az widthMediaColXl5(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*5);
//     return this;
//   }
//   Az widthMediaColXl6(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*6);
//     return this;
//   }
//   Az widthMediaColXl7(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*7);
//     return this;
//   }
//   Az widthMediaColXl8(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*8);
//     return this;
//   }
//   Az widthMediaColXl9(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*9);
//     return this;
//   }
//   Az widthMediaColXl10(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*10);
//     return this;
//   }
//   Az widthMediaColXl11(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*11);
//     return this;
//   }
//   Az widthMediaColXl12(BuildContext context) {
//     _widget = widthMediaXl(context, 0.0833*12);
//     return this;
//   }
//
//   // height
//   Az height(double val) {
//     _widget = SizedBox(height: val, child: _widget);
//     return this;
//   }
//   Az conditionalHeight(double val) {
//     if(val != 0){
//       _widget = SizedBox(height: val, child: _widget);
//     }
//     return this;
//   }
//   Az fractionalHeight(double double) {
//     _widget = FractionallySizedBox(heightFactor: double, child: _widget);
//     return this;
//   }
//
//
//   // Az fractionSize(double width, double height) {
//   //   _widget = FractionallySizedBox(widthFactor: width, heightFactor: height, child: _widget);
//   //   return this;
//   // }
//   //
//   // Az fractionWidth(double fraction) {
//   //   _widget = FractionallySizedBox(widthFactor: fraction, child: _widget);
//   //   return this;
//   // }
//   //
//   Az fractionHeight(double fraction) {
//     _widget = FractionallySizedBox(heightFactor: fraction, child: _widget);
//     return this;
//   }
//   // Az container() {
//   //   _widget = Container(child: _widget);
//   //   return this;
//   // }
//
//   // centring
//   Az center() {
//     _widget = Center(
//       child: _widget,
//     );
//     return this;
//   }
//
//   // Az positioned({double? left, double? top, double? right, double? bottom}){
//   //   _widget = Positioned(
//   //     left: left != null ? left : 0,
//   //     top: top != null ? top : 0,
//   //     right: right != null ? right : 0,
//   //     bottom: bottom != null ? bottom : 0,
//   //     child: _widget,
//   //   );
//   //   return this;
//   // }
//
//   // Az scroll() {
//   //   _widget = SingleChildScrollView(
//   //     child: _widget,
//   //   );
//   //   return this;
//   // }
//
//
//   // conditional
//   Az conditional(widget, bool bool) {
//     if(bool){
//       _widget = widget;
//     }
//     return this;
//   }
//
//
//   // on tap/press
//   Az on({VoidCallback? tap}){
//     _widget = GestureDetector(
//       onTap: tap,
//       child: _widget,
//     );
//     return this;
//   }
//
//   Widget helperBg(_widget){
//     _widget = ColoredBox(
//       color: setOpacity(_backgroundColor, _isActive, _isDisabled),
//       child: _widget,
//     );
//     _widget = helperRounded(_widget);
//     return _widget;
//   }
//
//   Widget helperBorder(Widget _widget){
//     return _widget = DecoratedBox(
//       decoration: BoxDecoration(
//         border: Border(
//           top:BorderSide(color: _borderTopColor, width: _borderTopWidth, style: _borderTopStyle),
//           right:BorderSide(color: _borderRightColor, width: _borderRightWidth, style: _borderRightStyle),
//           bottom:BorderSide(color: _borderBottomColor, width: _borderBottomWidth, style: _borderBottomStyle),
//           left:BorderSide(color: _borderLeftColor, width: _borderLeftWidth, style: _borderLeftStyle),
//         ),
//         borderRadius: BorderRadius.only(
//           topLeft:Radius.circular(_roundedTopLeft),
//           topRight:Radius.circular(_roundedTopRight),
//           bottomLeft:Radius.circular(_roundedBottomLeft),
//           bottomRight:Radius.circular(_roundedBottomRight),
//         ),
//       ),
//       child: _widget,
//     );
//     // return this;
//   }
//
//   Widget helperRounded(_widget) {
//     return _widget = ClipRRect(
//       borderRadius: BorderRadius.only(
//         topLeft:Radius.circular(_roundedTopLeft),
//         topRight:Radius.circular(_roundedTopRight),
//         bottomLeft:Radius.circular(_roundedBottomLeft),
//         bottomRight:Radius.circular(_roundedBottomRight),
//       ),
//       child: _widget,
//     );
//     return this;
//   }
//
// }