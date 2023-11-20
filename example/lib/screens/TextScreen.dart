import 'package:example/screens/text/text_background_screen.dart';
import 'package:example/screens/text/text_color_screen.dart';
import 'package:example/screens/text/text_decoration_screen.dart';
import 'package:example/screens/text/text_font_family_screen.dart';
import 'package:example/screens/text/text_font_features_screen.dart';
import 'package:example/screens/text/text_font_size_screen.dart';
import 'package:example/screens/text/text_font_variations_screen.dart';
import 'package:example/screens/text/text_font_weight_screen.dart';
import 'package:example/screens/text/text_foreground_screen.dart';
import 'package:example/screens/text/text_height_screen.dart';
import 'package:example/screens/text/text_leading_distribution_screen.dart';
import 'package:example/screens/text/text_letter_spacing_screen.dart';
import 'package:example/screens/text/text_locale_screen.dart';
import 'package:example/screens/text/text_overflow_screen.dart';
import 'package:example/screens/text/text_package_screen.dart';
import 'package:example/screens/text/text_shadows_screen.dart';
import 'package:example/screens/text/text_text_baseline_screen.dart';
import 'package:example/screens/text/text_word_spacing_screen.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/list_tile.dart';
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
        title: Text(widget.title),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),

            AzListTile(AzText("color").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextColorScreen(title: 'color')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("fontSize").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextFontSizeScreen(title: 'fontSize')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("fontWeight").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextFontWeightScreen(title: 'fontWeight')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("overflow").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextOverflowScreen(title: 'overflow')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("wordSpacing").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextWordSpacingScreen(title: 'wordSpacing')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("letterSpacing").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextLetterSpacingScreen(title: 'letterSpacing')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("textBaseline").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextBaselineScreen(title: 'textBaseline')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("height").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextHeightScreen(title: 'height')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("leadingDistribution").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextLeadingDistributionScreen(title: 'leadingDistribution')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("locale").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextLocaleScreen(title: 'locale')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("foreground").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextForegroundScreen(title: 'foreground',)
              );
            }),

            Divider(height:0),

            AzListTile(AzText("background").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextBackgroundScreen(title: 'background')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("shadows").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextShadowScreen(title: 'shadows')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("fontFeatures").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextFontFeatureScreen(title: 'fontFeatures')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("fontVariations").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextFontVariationScreen(title: 'fontVariations')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("decoration").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextDecorationScreen(title: 'decoration')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("fontFamily").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextFontFamilyScreen(title: 'fontFamily')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("package").fs(18).bold()).onTap(() {
              Navigate(context).to(
                  screen: TextPackageScreen(title: 'package')
              );
            }),

            Divider(height:0),


          ],
        )
        ,
      )
    );
  }
}
