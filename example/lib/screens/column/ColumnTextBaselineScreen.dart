import 'package:example/widgets/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';
import '../../widgets/text.dart';


class ColumnTextBaselineScreen extends StatefulWidget {
  const ColumnTextBaselineScreen({super.key, required this.title});

  final String title;

  @override
  State<ColumnTextBaselineScreen> createState() => _ColumnTextBaselineScreenState();
}

class _ColumnTextBaselineScreenState extends State<ColumnTextBaselineScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
            child: AzColumn([
              //
              // AzColumn([Text('1')]).alphabetic(),
              // Column(
              //   textBaseline: TextBaseline.ideographic,
              //   children: [
              //     Text('1')
              //   ],
              // ),

              SizedBox(height: 10,),

              AzText('How to use column').fs(14),

              SizedBox(height: 20),

              AzText('With Package').fs(14).bold(),

              codeSnippet('''
AzColumn([
  Text('1')
])
.alphabetic()            '''),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet('''
Column(
    children: [
      Text('1')
    ],
  )
.azColumn()
.alphabetic()            '''),

              SizedBox(height: 20),

              // Icon(Icons.add, color: Colors.green,),

              AzText('Without Package').fs(14).bold(),
              codeSnippet('''
Column(
    textBaseline: TextBaseline.alphabetic,
    children: [
      Text('1')
    ],
  )            '''),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(
                  AzColumn([
                    Text('1')
                  ]).alphabetic()
              ),

              //Other method
              SizedBox(height: 10),

              Divider(),

              SizedBox(height: 10),

              AzText('Other methods for mainAxisAlignment').fs(14).bold(),

              codeSnippet('''
AzColumn([
  Text('1')
])
.ideographic()            '''),


              SizedBox(height: 20),

            ]).crossStart().toContainer().px(10.0)
        )
    );
  }
}
