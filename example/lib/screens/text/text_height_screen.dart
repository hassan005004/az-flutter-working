import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextHeightScreen extends StatefulWidget {
  const TextHeightScreen({super.key, required this.title});

  final String title;

  @override
  State<TextHeightScreen> createState() => _TextHeightScreenState();
}

class _TextHeightScreenState extends State<TextHeightScreen> {

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
                codeSnippet("AzText('This is text').height(10)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('Ellipsis: This is text').azText().height(10)"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  height: 10\n"
                        "),"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                codeSnippetOutput(AzText("This is text").height(10).fs(14)),
              ]).crossStart().container().px(10.0),
            ],
          ),
        )
    );
  }
}
