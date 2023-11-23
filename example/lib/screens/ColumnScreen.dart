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
import 'column/ColumnCrossAxisAlignmentScreen.dart';
import 'column/ColumnMainAxisAlignmentScreen.dart';
import 'column/ColumnMainAxisSizeScreen.dart';
import 'column/ColumnTextBaselineScreen.dart';
import 'column/ColumnTextDirectionScreen.dart';
import 'column/ColumnVerticalDirectionScreen.dart';
import 'icon/icon_size_screen.dart';
import 'icon/icon_text_direction_screen.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key, required this.title});

  final String title;

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {

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

              AzListTile(AzText("crossAxisAlignment").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnCrossAxisAlignmentScreen(title: 'crossAxisAlignment')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("mainAxisAlignment").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnMainAxisAlignmentScreen(title: 'mainAxisAlignment')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("mainAxisSize").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnMainAxisSizeScreen(title: 'mainAxisSize')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("textDirection").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnTextDirectionScreen(title: 'textDirection')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("verticalDirection").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnVerticalDirectionScreen(title: 'verticalDirection')
                );
              }),

              Divider(height:0),

              AzListTile(AzText("textBaseline").fs(18).bold()).onTap(() {
                AzNavigate(context).to(
                    screen: ColumnTextBaselineScreen(title: 'textBaseline')
                );
              }),

              Divider(height:0),

            ],
          )
        )
    );
  }
}
