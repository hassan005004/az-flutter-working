import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextDecorationScreen extends StatefulWidget {
  const TextDecorationScreen({super.key, required this.title});

  final String title;

  @override
  State<TextDecorationScreen> createState() => _TextDecorationScreenState();
}

class _TextDecorationScreenState extends State<TextDecorationScreen> {

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

                AzText('Example of using font decoration underline, overline, linethrough').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                // codeSnippet("AzText('This is text')\n"
                //     ".decoration(TextDecoration.underline)"),
                // codeSnippet("AzText('This is text')\n"
                //     ".decorationUnderline()"),
                // codeSnippet("AzText('This is text')\n"
                //     ".decorationOverline()"),
                codeSnippet("AzText('This is text')\n"
                    ".decorationUnderline()\n"
                    ".decorationColor(Colors.blue)\n"
                    ".decorationThickness(5)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".decorationUnderline()\n"
                    ".decorationColor(Colors.blue)\n"
                    ".decorationThickness(5)"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                // Text(
                //   'This is text',
                //   style: TextStyle(
                //     decoration: TextDecoration.underline,
                //     decorationColor: Colors.blue,
                //     decorationStyle: TextDecorationStyle.solid,
                //     decorationThickness: 10,
                //   ),
                // ),
                codeSnippet(
                    "Text('This is text',\n"
                        "  style: TextStyle(\n"
                        "    decoration: TextDecoration.underline\n"
                        "    decorationColor: Colors.blue\n"
                        "    decorationStyle: TextDecorationStyle.solid\n"
                        "    decorationThickness: 10\n"
                        "  )\n"
                        ")"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                // codeSnippetOutput(AzText("This is text").decoration(TextDecoration.underline).fs(14)),
                // codeSnippetOutput(AzText("This is text").decorationUnderline().fs(14)),
                // codeSnippetOutput(AzText("This is text").decorationOverline().fs(14)),
                // codeSnippetOutput(AzText("This is text").decorationLineThrough().fs(14)),
                codeSnippetOutput(AzText("This is text").decorationUnderline().decorationColor(Colors.blue).decorationStyleSolid().decorationThickness(5).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
