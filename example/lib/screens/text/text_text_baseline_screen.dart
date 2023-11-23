import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextBaselineScreen extends StatefulWidget {
  const TextBaselineScreen({super.key, required this.title});

  final String title;

  @override
  State<TextBaselineScreen> createState() => _TextBaselineScreenState();
}

class _TextBaselineScreenState extends State<TextBaselineScreen> {

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
                codeSnippet("AzText('This is text').alphabetic()"),
                codeSnippet("AzText('This is text').alphabetic()"),
                codeSnippet("AzText('This is text').ideographic()"),
                codeSnippet("AzText('This is text').textBaseline(TextBaseline.alphabetic)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('Ellipsis: This is text').azText().textBaseline(TextBaseline.alphabetic)"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  textBaseline: TextBaseline.alphabetic\n"
                        "),"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                codeSnippetOutput(AzText("This is text").textBaseline(TextBaseline.alphabetic).fs(14)),
                codeSnippetOutput(AzText("This is text").textBaseline(TextBaseline.ideographic).fs(14)),
                codeSnippetOutput(AzText("This is text").textBaseline(TextBaseline.alphabetic).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
