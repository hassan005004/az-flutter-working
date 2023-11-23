import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextFontFamilyScreen extends StatefulWidget {
  const TextFontFamilyScreen({super.key, required this.title});

  final String title;

  @override
  State<TextFontFamilyScreen> createState() => _TextFontFamilyScreenState();
}

class _TextFontFamilyScreenState extends State<TextFontFamilyScreen> {

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

                AzText('For different writing we use font family as but you first need to load font in pubspec.yaml').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".fontFamily('fontFamily')\n"
                    ".fontFamilyFallback(['fallbackFontFamily'])"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".fontFamily('GlassAntiqua')\n"
                    ".fontFamilyFallback(['GlassAntiqua'])"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  style: TextStyle(\n"
                        "    fontFamily: GlassAntiqua,\n"
                        "    fontFamilyFallback: [GlassAntiqua]\n"
                        "  )\n"
                        ")"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),

                codeSnippetOutput(AzText("This is text").fontFamily('GlassAntiqua').fontFamilyFallback(['GlassAntiqua']).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
