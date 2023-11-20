import 'dart:ui';

import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextFontFeatureScreen extends StatefulWidget {
  const TextFontFeatureScreen({super.key, required this.title});

  final String title;

  @override
  State<TextFontFeatureScreen> createState() => _TextFontFeatureScreenState();
}

class _TextFontFeatureScreenState extends State<TextFontFeatureScreen> {

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
              AzColumn([
                SizedBox(height: 10,),

                AzText('The way you can use, we will work on list latter').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".fontFeatures([\n"
                    "   FontFeature.enable('liga'),\n"
                    "   FontFeature.enable('dlig'),\n"
                    "   FontFeature.enable('smcp'),\n"
                    "])"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".fontFeatures([\n"
                    "   FontFeature.enable('liga'),\n"
                    "   FontFeature.enable('dlig'),\n"
                    "   FontFeature.enable('smcp'),\n"
                    "])"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  style: TextStyle(\n"
                        "    fontFeatures:[\n"
                        "      FontFeature.enable('liga')\n"
                        "      FontFeature.enable('dlig')\n"
                        "      FontFeature.enable('smcp')\n"
                        "    ]\n"
                        "  )\n"
                        ")"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),

                // Text(
                //   'This is a text with variable font size, weight, and slant.',
                //   style: TextStyle(
                //     fontFamily: 'Roboto',
                //     fontSize: 20,
                //     fontVariations: <FontVariation>[
                //       FontVariation('opsz', 700),
                //       FontVariation('wght', 700),
                //       FontVariation('slnt', 15),
                //     ],
                //   ),
                // ),

                codeSnippetOutput(AzText("This is text").fontFeatures([
                  FontFeature.enable('liga'),
                  FontFeature.enable('dlig'),
                  FontFeature.enable('smcp'),
                ]).fs(14)),
              ]).crossStart().container().px(10.0),
            ],
          ),
        )
    );
  }
}
