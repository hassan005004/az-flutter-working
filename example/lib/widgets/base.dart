//
// import 'package:flutter/cupertino.dart';
//
// class AzBase extends StatelessWidget {
//   Widget? child;
//
//   AzBase([this.child = const SizedBox.shrink()]);
//
//   @override
//   Widget build(context) => SizedBox.shrink();
//
//   AzBase builder(Widget Function(Widget child) builder) {
//     child = builder(child!);
//
//     return this;
//   }
//
//   Widget internalBuild(Widget widget) {
//     return Container(
//       key: widget.key,
//       margin: EdgeInsets.only(
//         top: 10,
//         left: 10,
//         bottom: 10,
//         right: 10,
//       ),
//       child: child,
//     );
//   }
//
// }