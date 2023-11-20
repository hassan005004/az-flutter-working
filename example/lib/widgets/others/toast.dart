// import 'package:ahc_visiting_patient_area/helpers/package/container.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import "dart:async";
//
// class AzToast extends AzContainer {
//   final BuildContext _context;
//   final String data;
//   final Key key;
//   OverlayEntry _overlayEntry;
//   bool isVisible = false;
//
//   AzToast(
//       this.data,this._context, {
//         this.key,
//       });
//
//   v(){
//     _createView(data, _context, Colors.blueAccent, Colors.white);
//     dismiss();
//   }
//
//
//   _createView(
//       String msg,
//       BuildContext context,
//       Color background,
//       Color textColor,
//       ) {
//     var overlayState = Overlay.of(context);
//
//     // final themeData = Theme.of(context);
//
//     _overlayEntry = new OverlayEntry(
//         // opaque: true,
//       // maintainState: true,
//       builder: (BuildContext context) => Positioned(
//         left:0,
//         bottom:0,
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           child: Container(
//             alignment: Alignment.center,
//             width: MediaQuery.of(context).size.width,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: background,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
//               child: ListView.builder(
//                   itemCount: 5,
//                   itemBuilder: (BuildContext context,int index){
//                     return ListTile(
//                         leading: Icon(Icons.list),
//                         trailing: Text("GFG",
//                           style: TextStyle(
//                               color: Colors.green,fontSize: 15),),
//                         title:Text("List item $index")
//                     );
//                   }
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//     isVisible = true;
//     overlayState.insert(_overlayEntry);
//   }
//
//   dismiss() async {
//     Future.delayed(Duration(seconds: 20), () {
//       _overlayEntry?.remove();
//     });
//
//     // if (!isVisible) {
//     //   return;
//     // }
//     // isVisible = false;
//     // _overlayEntry?.remove();
//   }
//
// }
// class _ToastAnimatedWidget extends StatefulWidget {
//   _ToastAnimatedWidget({
//     Key key,
//     @required this.child,
//   }) : super(key: key);
//
//   final Widget child;
//
//   @override
//   _ToastWidgetState createState() => _ToastWidgetState();
// }
//
// class _ToastWidgetState extends State<_ToastAnimatedWidget>
//     with SingleTickerProviderStateMixin {
//
//   bool get _isVisible => true; //update this value later
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//         bottom: 50,
//         child: AnimatedOpacity(
//           duration: Duration(seconds: 2),
//           opacity: _isVisible ? 1.0 : 0.0,
//           child: widget.child,
//         )
//     );
//   }
//
// }
//
// // copy from
// // https://stackoverflow.com/questions/55702709/how-to-show-custom-toast-dialog-in-flutter
// // class Toast {
// //   static void show(
// //       String msg,
// //       BuildContext context) {
// //     Color textColor = Colors.white;
// //     Color backgroundColor = Colors.blueAccent;
// //     dismiss();
// //     Toast._createView(msg, context, backgroundColor, textColor);
// //   }
// //
// //   static OverlayEntry _overlayEntry;
// //   static bool isVisible = false;
// //
// //   static void _createView(
// //       String msg,
// //       BuildContext context,
// //       Color background,
// //       Color textColor,
// //       ) async {
// //     var overlayState = Overlay.of(context);
// //
// //     final themeData = Theme.of(context);
// //
// //     _overlayEntry = new OverlayEntry(
// //       builder: (BuildContext context) => _ToastAnimatedWidget(
// //         child: Container(
// //           width: MediaQuery.of(context).size.width,
// //           child: Container(
// //             alignment: Alignment.center,
// //             width: MediaQuery.of(context).size.width,
// //             child: Container(
// //               decoration: BoxDecoration(
// //                 color: background,
// //                 borderRadius: BorderRadius.circular(20),
// //               ),
// //               margin: EdgeInsets.symmetric(horizontal: 20),
// //               padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
// //               child: Text(
// //                 msg,
// //                 softWrap: true,
// //                 style: themeData.textTheme.body1.copyWith(
// //                   fontFamily: 'intel',
// //                   color: Colors.white,
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //     isVisible = true;
// //     overlayState.insert(_overlayEntry);
// //   }
// //
// //   static dismiss() async {
// //     if (!isVisible) {
// //       return;
// //     }
// //     isVisible = false;
// //     _overlayEntry?.remove();
// //   }
// // }
// // class _ToastAnimatedWidget extends StatefulWidget {
// //   _ToastAnimatedWidget({
// //     Key key,
// //     @required this.child,
// //   }) : super(key: key);
// //
// //   final Widget child;
// //
// //   @override
// //   _ToastWidgetState createState() => _ToastWidgetState();
// // }
// //
// // class _ToastWidgetState extends State<_ToastAnimatedWidget>
// //     with SingleTickerProviderStateMixin {
// //
// //   bool get _isVisible => true; //update this value later
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Positioned(
// //         bottom: 50,
// //         child: AnimatedOpacity(
// //           duration: Duration(seconds: 2),
// //           opacity: _isVisible ? 1.0 : 0.0,
// //           child: widget.child,
// //         )
// //     );
// //   }
// // }
//
// // import 'package:ahc_visiting_patient_area/helpers/package/helpers/HexColor.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// //
// // import 'column.dart';
// // import 'column.dart';
// // import 'container.dart';
// //
// // // extension AzBuilder on Row {
// // //   AzDialog az() => AzDialog(child ?? "");
// // // }
// // // https://stackoverflow.com/questions/53716571/how-to-align-single-widgets-in-flutter?rq=1
// // class AzToast{
// //   final Widget _child;
// //   final Key key;
// //   final BuildContext _context;
// //
// //   // AzDialog(BuildContext context);
// //   Alignment alignment = Alignment.bottomCenter;
// //   Offset begin = Offset(0, 1);
// //   Offset end = Offset(0, 0);
// //   bool isDismissible = true;
// //   String _label = "Label";
// //   Color _barrierColor = color("#000000").withOpacity(0.5);
// //   Duration _transitionDuration = Duration(milliseconds: 700);
// //   // int isShow = 1;
// //   double _height;
// //   double _width;
// //
// //   AzToast(
// //       this._context, this._child, {
// //         this.key,
// //       });
// //
// //   // AzDialog(child);
// //
// //   barrierColor(String string){
// //     _barrierColor = color(string).withOpacity(0.5);
// //     return this;
// //   }
// //
// //   top(){
// //     alignment = Alignment.topCenter;
// //     //top to bottom: begin: Offset(0, -1), end: Offset(0, 0)
// //     begin = Offset(0, -1);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   topLeft(){
// //     alignment = Alignment.topLeft;
// //     //left to right begin: Offset(-1, 0), end: Offset(0, 0)
// //     begin = Offset(-1, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   topRight(){
// //     alignment = Alignment.topRight;
// //     //right to left begin: Offset(1, 0), end: Offset(0, 0)
// //     begin = Offset(1, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   bottom(){
// //     alignment = Alignment.bottomCenter;
// //     //bottom to top: begin: Offset(0, 1), end: Offset(0, 0)
// //     begin = Offset(0, 1);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   bottomLeft(){
// //     alignment = Alignment.bottomLeft;
// //     //left to right begin: Offset(-1, 0), end: Offset(0, 0)
// //     begin = Offset(-1, 1);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   bottomRight(){
// //     alignment = Alignment.bottomRight;
// //     //right to left begin: Offset(1, 0), end: Offset(0, 0)
// //     begin = Offset(1, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   center(){
// //     alignment = Alignment.center;
// //     begin = Offset(0, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   centerLeft(){
// //     alignment = Alignment.centerLeft;
// //     //left to right begin: Offset(-1, 0), end: Offset(0, 0)
// //     begin = Offset(-1, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   centerRight(){
// //     alignment = Alignment.centerRight;
// //     //right to left begin: Offset(1, 0), end: Offset(0, 0)
// //     begin = Offset(1, 0);
// //     end = Offset(0, 0);
// //     return this;
// //   }
// //
// //   show([int val = 1]){
// //     if(val == 1)
// //       helperDialog(_context, _child);
// //   }
// //
// //   dismissible(bool val){
// //     isDismissible = val;
// //     return this;
// //   }
// //
// //   label(String string){
// //     _label = string;
// //     return this;
// //   }
// //
// //   // Az method() => Az(
// //   //   Builder(
// //   //     builder: (context) => build(context),
// //   //   ),
// //   //   key,
// //   // );
// //
// //   transitionDuration(Duration duration){
// //     _transitionDuration = duration;
// //     return this;
// //   }
// //
// //   // width
// //   width(double val) {
// //     _width = val;
// //     return this;
// //   }
// //
// //   // height
// //   // height(double val) {
// //   //   _height = val;
// //   //   return this;
// //   // }
// //
// //
// //   helperToast(context,child) {
// //     Fluttertoast.showToast(
// //         msg: 'This is toast notification',
// //         toastLength: Toast.LENGTH_SHORT,
// //         gravity: ToastGravity.BOTTOM,
// //         timeInSecForIos: 1,
// //         backgroundColor: Colors.red,
// //         textColor: Colors.yellow
// //     );
// //     return this;
// //   }
// //
// // }