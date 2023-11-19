import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextFontWeightScreen extends StatefulWidget {
  const TextFontWeightScreen({super.key, required this.title});

  final String title;

  @override
  State<TextFontWeightScreen> createState() => _TextFontWeightScreenState();
}

class _TextFontWeightScreenState extends State<TextFontWeightScreen> {

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
              codeSnippet("AzText('This is text').fw(FontWeight.bold)"),
              codeSnippet("AzText('normal').normal()"),
              codeSnippet("AzText('bold').bold()"),
              codeSnippet("AzText('w100').w100()"),
              codeSnippet("AzText('w200').w200()"),
              codeSnippet("AzText('w300').w300()"),
              codeSnippet("AzText('w400').w400()"),
              codeSnippet("AzText('w500').w500()"),
              codeSnippet("AzText('w600').w600()"),
              codeSnippet("AzText('w700').w700()"),
              codeSnippet("AzText('w800').w800()"),
              codeSnippet("AzText('w900').w900()"),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet("Text('This is text').asText().fw(FontWeight.bold)"),

              SizedBox(height: 20),

              AzText('Without Package').fs(14).bold(),
              codeSnippet(
                  "Text('This is text',\n"
                      "  style: TextStyle(\n"
                      "    fontWeight: FontWeight.bold\n"
                      "  ),\n"
                      "),"),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(AzText("This is text").fw(FontWeight.bold)),
              codeSnippetOutput(AzText("normal").normal().fs(14)),
              codeSnippetOutput(AzText("bold").bold().fs(14)),
              codeSnippetOutput(AzText("w100").w100().fs(14)),
              codeSnippetOutput(AzText("w200").w200().fs(14)),
              codeSnippetOutput(AzText("w300").w300().fs(14)),
              codeSnippetOutput(AzText("w400").w400().fs(14)),
              codeSnippetOutput(AzText("w500").w500().fs(14)),
              codeSnippetOutput(AzText("w600").w600().fs(14)),
              codeSnippetOutput(AzText("w700").w700().fs(14)),
              codeSnippetOutput(AzText("w800").w800().fs(14)),
              codeSnippetOutput(AzText("w900").w900().fs(14)),
            ]).crossStart().container().px(10.0),
          ],
        ),
      )
    );
  }
}
