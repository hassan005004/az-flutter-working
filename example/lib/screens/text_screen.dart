import 'package:example/screens/text/text_color_screen.dart';
import 'package:example/screens/text/text_font_size_screen.dart';
import 'package:example/screens/text/text_font_weight_screen.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigate.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key, required this.title});

  final String title;

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('AzText / Text'),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),

            AzText("color").fs(18).bold().container().widthFull().px(10.0).gestureDetector().onTapUp((p0) {
              Navigate(context).to(
                  screen: TextColorScreen(title: 'color')
              );
            }),

            Divider(),

            AzText("fontSize").fs(18).bold().container().widthFull().px(10.0).gestureDetector().onTapUp((p0) {
              Navigate(context).to(
                  screen: TextFontSizeScreen(title: 'fontSize')
              );
            }),

            Divider(),

            AzText("fontWeight").fs(18).bold().container().widthFull().px(10.0).gestureDetector().onTapUp((p0) {
              Navigate(context).to(
                  screen: TextFontWeightScreen(title: 'fontWeight')
              );
            }),

            Divider(),

            AzText("overflow").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("wordSpacing").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("letterSpacing").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("textBaseline").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("height").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("leadingDistribution").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("locale").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("foreground").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("background").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("shadows").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("fontFeatures").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("fontVariations").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("decoration").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("decorationColor").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("decorationStyle").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("decorationThickness").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("fontFamily").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),

            AzText("package").fs(18).bold().gestureDetector().onTapUp((p0) {

            }).container().px(10.0),

            Divider(),


          ],
        )
        ,
      )
    );
  }
}
