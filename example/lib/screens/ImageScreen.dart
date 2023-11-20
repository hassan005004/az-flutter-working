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
import 'icon/icon_size_screen.dart';
import 'icon/icon_text_direction_screen.dart';
import 'image/AssetImageScreen.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key, required this.title});

  final String title;

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
          child: AzColumn([
            // Image.asset(name)
              AzListTile(AzText("Examples").fs(18).bold()).onTap(() {
                Navigate(context).to(
                    screen: AssetImageScreen(title: 'Assets Image')
                );
              }),

              Divider(height:0),

              // AzListTile(AzText("Network Image").fs(18).bold()).onTap(() {
              //   Navigate(context).to(
              //       screen: IconColorScreen(title: 'Network Image')
              //   );
              // }),

              // Divider(height:0),

            ],
          ),
        )
    );
  }
}
