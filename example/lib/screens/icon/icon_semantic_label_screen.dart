import 'dart:ui';

import 'package:example/widgets/icon.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class IconSemanticLabelScreen extends StatefulWidget {
  const IconSemanticLabelScreen({super.key, required this.title});

  final String title;

  @override
  State<IconSemanticLabelScreen> createState() => _IconSemanticLabelScreenState();
}

class _IconSemanticLabelScreenState extends State<IconSemanticLabelScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
          child: AzColumn([
            SizedBox(height: 10,),

            AzText('How to color icon').fs(14),

            SizedBox(height: 20),

            AzText('With Package').fs(14).bold(),

            codeSnippet('''
AzIcon(Icons.add)
.semanticLabel('label')
            '''),

            SizedBox(height: 20),

            AzText('With Extension').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add)
.azIcon()
.semanticLabel('label')
            '''),

            SizedBox(height: 20),

            // Icon(Icons.add, semanticLabel: 'asd'),

            AzText('Without Package').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add, semanticLabel: 'label',)
            '''),

            SizedBox(height: 20),
            AzText('Output').fs(14).bold(),

            codeSnippetOutput(
                AzIcon(Icons.add).semanticLabel('label').container().px(10.0)
            ),
          ]).crossStart().container().px(10.0)
      )
    );
  }
}
