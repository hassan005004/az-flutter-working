import 'dart:ui';

import 'package:example/widgets/icon.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';

class IconTextDirectionScreen extends StatefulWidget {
  const IconTextDirectionScreen({super.key, required this.title});

  final String title;

  @override
  State<IconTextDirectionScreen> createState() => _IconTextDirectionScreenState();
}

class _IconTextDirectionScreenState extends State<IconTextDirectionScreen> {

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
.ltr()'''),

            SizedBox(height: 20),

            AzText('With Extension').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add)
.azIcon()
.ltr()'''),

            SizedBox(height: 20),

            // Icon(Icons.add, textDirection: TextDirection.ltr,),

            AzText('Without Package').fs(14).bold(),
            codeSnippet('''
Icon(Icons.add, textDirection: TextDirection.ltr)'''),

            SizedBox(height: 20),
            AzText('Output').fs(14).bold(),

            codeSnippetOutput(
              AzIcon(Icons.arrow_forward_ios).ltr(),
            ),


            SizedBox(height: 10),

            Divider(),

            SizedBox(height: 10),

            AzText('rtl example').fs(14).bold(),

            codeSnippet('''
AzIcon(Icons.add)
.rtl()'''),

            SizedBox(height: 20),
            AzText('Output').fs(14).bold(),

            codeSnippetOutput(
              AzIcon(Icons.arrow_forward_ios).rtl(),
            ),
          ]).crossStart().container().px(10.0)
      )
    );
  }
}
