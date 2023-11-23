import 'dart:ui';

import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextForegroundScreen extends StatefulWidget {
  const TextForegroundScreen({super.key, required this.title});

  final String title;

  @override
  State<TextForegroundScreen> createState() => _TextForegroundScreenState();
}

class _TextForegroundScreenState extends State<TextForegroundScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AzColumn([
                SizedBox(height: 10,),

                AzText('The way you can use').fs(14),

                SizedBox(height: 20),

                AzText('With Package').fs(14).bold(),
                codeSnippet("AzText('This is text')\n"
                    ".foreground(Paint()\n"
                    "  ..style = PaintingStyle.stroke\n"
                    "  ..color = Colors.green\n"
                    "  ..strokeWidth = 2\n"
                    ")"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text')\n"
                    ".azText()\n"
                    ".foreground(Paint()\n"
                    "  ..style = PaintingStyle.stroke\n"
                    "  ..color = Colors.green\n"
                    "  ..strokeWidth = 2\n"
                    ")"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  style: TextStyle(\n"
                        "    foreground:paint()\n"
                        "      ..style = PaintingStyle.stroke\n"
                        "      ..color = Colors.green\n"
                        "      ..strokeWidth = 2\n"
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

                codeSnippetOutput(AzText("This is text").foreground(Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Colors.green
                  ..strokeWidth = 2).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
