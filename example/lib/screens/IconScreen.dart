import 'package:example/screens/icon/icon_color_screen.dart';
import 'package:example/screens/icon/icon_semantic_label_screen.dart';
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
import 'icon/icon_size_screen.dart';
import 'icon/icon_text_direction_screen.dart';

class IconScreen extends StatefulWidget {
  const IconScreen({super.key, required this.title});

  final String title;

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {

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
              AzListTile(AzText("size").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: IconSizeScreen(title: 'size')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("color").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: IconColorScreen(title: 'color')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("semanticLabel").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: IconSemanticLabelScreen(title: 'semanticLabel')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("textDirection").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: IconTextDirectionScreen(title: 'textDirection')
                );
              }),

              Divider(height:0),

              // AzText("fill").fs(18).bold().onTap(() {
              //   AzNavigate(context).to(
              //       screen: IconTextDirectionScreen(title: 'fill')
              //   );
              // }),
              //
              // Divider(height:0),
              //
              // AzText("weight").fs(18).bold().onTap(() {
              //   AzNavigate(context).to(
              //       screen: IconTextDirectionScreen(title: 'weight')
              //   );
              // }),
              //
              // Divider(height:0),
              //
              // AzText("grade").fs(18).bold().onTap(() {
              //   AzNavigate(context).to(
              //       screen: IconTextDirectionScreen(title: 'grade')
              //   );
              // }),
              //
              // Divider(height:0),
              //
              // AzText("opticalSize").fs(18).bold().onTap(() {
              //   AzNavigate(context).to(
              //       screen: IconTextDirectionScreen(title: 'opticalSize')
              //   );
              // }),
              //
              // Divider(height:0),
              //
              // AzText("shadow").fs(18).bold().onTap(() {
              //   AzNavigate(context).to(
              //       screen: IconTextDirectionScreen(title: 'shadow')
              //   );
              // }),
              //
              // Divider(height:0),

            ],
          )
          ,
        )
    );
  }
}
