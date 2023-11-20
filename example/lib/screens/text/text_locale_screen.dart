import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextLocaleScreen extends StatefulWidget {
  const TextLocaleScreen({super.key, required this.title});

  final String title;

  @override
  State<TextLocaleScreen> createState() => _TextLocaleScreenState();
}

class _TextLocaleScreenState extends State<TextLocaleScreen> {

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
                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".locale(Locale('en'))"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('Ellipsis: This is text')\n"
                    ".azText()\n"
                    ".locale(Locale('en'))"),
                // codeSnippet("Text('This is text').azText().overflowFade()"),
                // codeSnippet("Text('This is text').azText().overflowClip()"),
                // codeSnippet("Text('This is text').azText().overflowEllipsis()"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  style: TextStyle(\n"
                        "    locale: Locale('en)\n"
                        "  )\n"
                        ")"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                codeSnippetOutput(AzText("This is text").locale(Locale('en')).fs(14)),
              ]).crossStart().container().px(10.0),
            ],
          ),
        )
    );
  }
}
