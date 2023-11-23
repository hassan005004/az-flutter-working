import 'dart:ui';

import 'package:example/widgets/icon.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class IconSizeScreen extends StatefulWidget {
  const IconSizeScreen({super.key, required this.title});

  final String title;

  @override
  State<IconSizeScreen> createState() => _IconSizeScreenState();
}

class _IconSizeScreenState extends State<IconSizeScreen> {

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
.size(20)
            '''),

            SizedBox(height: 20),

            AzText('With Extension').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add)
.azIcon()
.size(20)
            '''),

            SizedBox(height: 20),

            // Icon(Icons.add, color: Colors.green,),

            AzText('Without Package').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add, size: 20,)
            '''),

            SizedBox(height: 20),
            AzText('Output').fs(14).bold(),

            codeSnippetOutput(
                AzIcon(Icons.add).size(20).toContainer().px(10.0)
            ),
          ]).crossStart().toContainer().px(10.0)
      )
    );
  }
}
