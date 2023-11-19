

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:az_ui/widgets/common_widget.dart';
import 'package:az_ui/helper/config.dart';
import 'container.dart';

class AzTextFormField extends AzContainer{

  AzTextFormField(this.context, this._label);

  BuildContext context;
  String _label = '';
  String? _hintText = '';
  String? _initialValue;
  void Function(String)? _onChanged;
  List<TextInputFormatter>? inputType;
  TextInputType keyboardType = TextInputType.none;
  TextEditingController? _controller;
  bool _obscureText = false;
  double horizontalPadding = 5.0;
  double verticalPadding = 0.0;
  double _height = 30.0;
  TextAlign _textAlign = TextAlign.start;
  OutlineInputBorder? _focusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: main_one_color, width: 2.0),
  );
  OutlineInputBorder? _enabledBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
  );



  // dynamic name;
  // void Function()? onPressed;
  // Color borderColor = Colors.transparent;//border_color;
  // Color bgColor = Colors.transparent;//main_one_color.withOpacity(0.125);
  // Color textColor = Colors.black;
  // EdgeInsets padding = EdgeInsets.symmetric(horizontal: padding_x, vertical: padding_y);
  // double radius = radius_one;
  // FontWeight fontWeight = FontWeight.bold;
  // double _fontSize = 13;
  // double? _width;
  // double? _height;
  //
  //
  //
  // fs(double size){
  //   _fontSize = size;
  //   return this;
  // }
  //
  // color(Color color){
  //   borderColor = color;
  //   bgColor = color.withOpacity(0.25);
  //   // textColor = color;
  //   return this;
  // }
  //
  // full(){
  //   _width = double.maxFinite;//MediaQuery.of(context).size.width;
  //   return this;
  // }
  //
  // width(double width){
  //   _width = width;
  //   return this;
  // }
  //
  // height(double height){
  //   _height = height;
  //   return this;
  // }
  //
  // pLTRB(double left, double top, double right, double bottom){
  //   padding = EdgeInsets.fromLTRB(left, top, right, bottom);
  //   return this;
  // }

  initialValue(String value){
    _initialValue = value;
  }

  textAlign(TextAlign textAlign){
    _textAlign = textAlign;
    return this;
  }

  hintText(String hintText){
    _hintText = hintText;
    return this;
  }

  // contentPadding(contentPadding){
  //   _contentPadding = contentPadding;
  //   return this;
  // }

  type(String number){
    keyboardType = TextInputType.number;
    inputType = [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
    ];
    return this;
  }

  onChanged(void Function(String) onChanged){
    _onChanged = onChanged;

    return this;
  }

  controller(TextEditingController controller){
    _controller = controller;
    return this;
  }

  obscureText(bool obscureText){
    _obscureText = obscureText;
    return this;
  }

  padding(double? x, double? y){
    if(x != null){
      horizontalPadding = x;
    }
    if(y != null){
      verticalPadding = y;
    }
    return this;
  }

  height(double height){
    _height = height;
    return this;
  }

  focusedBorder(focusedBorder){
    _focusedBorder = focusedBorder;
    return this;
  }

  enabledBorder(enabledBorder){
    _enabledBorder = enabledBorder;
    return this;
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       if(_label != '')
  //         Column(
  //           children: [
  //             label(_label),
  //             gapY(5),
  //           ],
  //         ),
  //
  //       Container(
  //         height: _height,
  //         child: TextFormField(
  //           controller: _controller,
  //           initialValue: _initialValue,
  //           keyboardType: keyboardType,
  //           inputFormatters: inputType,
  //           obscureText: _obscureText,
  //           decoration: InputDecoration(
  //             hintText: '',
  //             contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
  //             focusedBorder: OutlineInputBorder(
  //               borderSide: BorderSide(color: main_one_color, width: 2.0),
  //             ),
  //             enabledBorder: const OutlineInputBorder(
  //               borderSide: BorderSide(color: Colors.black, width: 1.0),
  //             ),
  //           ),
  //           onChanged: _onChanged,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return buildItOnAzMethod();
  }

  Widget buildItOnAzMethod() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if(_label != '')
        Column(
          children: [
            label(_label),
            gapY(5),
          ],
        ),

      Container(
        height: _height,
        child: TextFormField(
          textAlign: _textAlign,
          controller: _controller,
          initialValue: _initialValue,
          keyboardType: keyboardType,
          inputFormatters: inputType,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: _hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
            focusedBorder: _focusedBorder,
            enabledBorder: _enabledBorder,
          ),
          onChanged: _onChanged,
        ),
      ),
    ],
  );

  AzContainer az() => AzContainer(child:this.buildItOnAzMethod());

}

selectionProblem(controller){
  controller.selection = TextSelection.fromPosition(TextPosition(offset: controller.text.length));
  return controller;
}
