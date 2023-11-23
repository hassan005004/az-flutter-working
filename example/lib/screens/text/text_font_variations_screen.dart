import 'dart:ui';

import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextFontVariationScreen extends StatefulWidget {
  const TextFontVariationScreen({super.key, required this.title});

  final String title;

  @override
  State<TextFontVariationScreen> createState() => _TextFontVariationScreenState();
}

class _TextFontVariationScreenState extends State<TextFontVariationScreen> {

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

                AzText('The way you can use, we will work on list latter. Also we can not understand this at the moment').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".fontVariations([\n"
                    "  FontVariation('wght', 700),\n"
                    "  FontVariation('wdth', 150),\n"
                    "])"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".fontVariations([\n"
                    "  FontVariation('wght', 700),\n"
                    "  FontVariation('wdth', 150),\n"
                    "])"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                    "  style: TextStyle(\n"
                    "    fontVariations:[\n"
                    "      FontVariation('wght', 700)\n"
                    "      FontVariation('wdth', 150)\n"
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

                codeSnippetOutput(AzText("This is text").fontVariations([
                  FontVariation('wght', 700),
                  FontVariation('wdth', 150),
                ]).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
