import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextPackageScreen extends StatefulWidget {
  const TextPackageScreen({super.key, required this.title});

  final String title;

  @override
  State<TextPackageScreen> createState() => _TextPackageScreenState();
}

class _TextPackageScreenState extends State<TextPackageScreen> {

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

                AzText('If you want to load font family from other package then you use this').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".package('package)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".package('package)"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  package: 'package'\n"
                        "),"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                // codeSnippetOutput(AzText("This is text").package('assets/fonts/GlassAntiqua-Regular.ttf').fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
