import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class TextLeadingDistributionScreen extends StatefulWidget {
  const TextLeadingDistributionScreen({super.key, required this.title});

  final String title;

  @override
  State<TextLeadingDistributionScreen> createState() => _TextLeadingDistributionScreenState();
}

class _TextLeadingDistributionScreenState extends State<TextLeadingDistributionScreen> {

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
                codeSnippet("AzText('This is text').leadingDistributionEven()"),
                codeSnippet("AzText('This is text').leadingDistributionProportional()"),
                codeSnippet("AzText('This is text').leadingDistribution(TextLeadingDistribution.proportional)"),

                SizedBox(height: 20),

                AzText('With Extension').fs(14).bold(),
                codeSnippet("Text('This is text').azText().leadingDistributionEven()"),

                SizedBox(height: 20),

                AzText('Without Package').fs(14).bold(),
                codeSnippet(
                    "Text('This is text',\n"
                        "  leadingDistribution: TextLeadingDistribution.even\n"
                        "),"),

                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),
                codeSnippetOutput(AzText("This is text").leadingDistributionEven().fs(14)),
                codeSnippetOutput(AzText("This is text").leadingDistributionProportional().fs(14)),
                codeSnippetOutput(AzText("This is text").leadingDistribution(TextLeadingDistribution.proportional).fs(14)),
              ]).crossStart().toContainer().px(10.0),
            ],
          ),
        )
    );
  }
}
