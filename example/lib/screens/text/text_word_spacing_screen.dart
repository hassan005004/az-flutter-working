import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextWordSpacingScreen extends StatefulWidget {
  const TextWordSpacingScreen({super.key, required this.title});

  final String title;

  @override
  State<TextWordSpacingScreen> createState() => _TextWordSpacingScreenState();
}

class _TextWordSpacingScreenState extends State<TextWordSpacingScreen> {

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
                codeSnippet("AzText('This is text').wordSpacing(10)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text').azText().wordSpacing(10)"),
                // codeSnippet("Text('This is text').azText().overflowFade()"),
                // codeSnippet("Text('This is text').azText().overflowClip()"),
                // codeSnippet("Text('This is text').azText().overflowEllipsis()"),

                SizedBox(height: 20),

                // Text('This is text',
                //   style: TextStyle(
                //     wordSpacing: 10,
                //   ),
                // ),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  wordSpacing: 10\n"
                        "),"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                codeSnippetOutput(AzText("This is text").wordSpacing(10).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
