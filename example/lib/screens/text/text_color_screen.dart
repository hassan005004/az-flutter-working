import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextColorScreen extends StatefulWidget {
  const TextColorScreen({super.key, required this.title});

  final String title;

  @override
  State<TextColorScreen> createState() => _TextColorScreenState();
}

class _TextColorScreenState extends State<TextColorScreen> {

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
              codeSnippet("AzText('This is text').color(Colors.blue)"),

              SizedBox(height: 20),
              
              AzText('With Color Group').fs(14).bold(),
              codeSnippet("AzText('This is text').primaryColor()"),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet("Text('This is text').azText().primaryColor()"),

              SizedBox(height: 20),

              AzText('Without Package').fs(14).bold(),
              codeSnippet(
              "Text('This is text',\n"
              "  style: TextStyle(\n"
              "    color: Colors.blue\n"
              "  ),\n"
              "),"),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),
              codeSnippetOutput(
                  AzText("This is text").color(Colors.blue)
              ),
            ]).crossStart().container().px(10.0),
          ],
        ),
      )
    );
  }
}
