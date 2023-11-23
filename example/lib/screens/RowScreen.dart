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

import '../widgets/column.dart';
import '../widgets/list_tile.dart';
import '../widgets/navigate.dart';
import 'row/RowCrossAxisAlignmentScreen.dart';
import 'row/RowMainAxisAlignmentScreen.dart';
import 'row/RowMainAxisSizeScreen.dart';
import 'row/RowTextBaselineScreen.dart';
import 'row/RowTextDirectionScreen.dart';
import 'row/RowVerticalDirectionScreen.dart';
import 'icon/icon_size_screen.dart';
import 'icon/icon_text_direction_screen.dart';

class RowScreen extends StatefulWidget {
  const RowScreen({super.key, required this.title});

  final String title;

  @override
  State<RowScreen> createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
            child: AzColumn([

                AzListTile(AzText("crossAxisAlignment").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowCrossAxisAlignmentScreen(title: 'crossAxisAlignment')
                  );
                }),

                Divider(height:0),

                AzListTile(AzText("mainAxisAlignment").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowMainAxisAlignmentScreen(title: 'mainAxisAlignment')
                  );
                }),

                Divider(height:0),

                AzListTile(AzText("mainAxisSize").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowMainAxisSizeScreen(title: 'mainAxisSize')
                  );
                }),

                Divider(height:0),

                AzListTile(AzText("textDirection").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowTextDirectionScreen(title: 'textDirection')
                  );
                }),

                Divider(height:0),

                AzListTile(AzText("verticalDirection").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowVerticalDirectionScreen(title: 'verticalDirection')
                  );
                }),

                Divider(height:0),

                AzListTile(AzText("textBaseline").fs(18).bold()).onTap(() {
                  AzNavigate(context).to(
                      screen: RowTextBaselineScreen(title: 'textBaseline')
                  );
                }),

                Divider(height:0),

              ])
        )
    );
  }
}
