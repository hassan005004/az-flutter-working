import 'package:example/widgets/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';
import '../../widgets/row.dart';
import '../../widgets/text.dart';


class RowTextBaselineScreen extends StatefulWidget {
  const RowTextBaselineScreen({super.key, required this.title});

  final String title;

  @override
  State<RowTextBaselineScreen> createState() => _RowTextBaselineScreenState();
}

class _RowTextBaselineScreenState extends State<RowTextBaselineScreen> {

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
              // AzRow([Text('1')]).alphabetic(),
              // Row(
              //   textBaseline: TextBaseline.ideographic,
              //   children: [
              //     Text('1')
              //   ],
              // ),

              SizedBox(height: 10,),

              AzText('How to use row').fs(14),

              SizedBox(height: 20),

              AzText('With Package').fs(14).bold(),

              codeSnippet('''
AzRow([
  Text('1')
])
.alphabetic()            '''),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet('''
Row(
    children: [
      Text('1')
    ],
  )
.azRow()
.alphabetic()            '''),

              SizedBox(height: 20),

              // Icon(Icons.add, color: Colors.green,),

              AzText('Without Package').fs(14).bold(),
              codeSnippet('''
Row(
    textBaseline: TextBaseline.alphabetic,
    children: [
      Text('1')
    ],
  )            '''),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(
                  AzRow([
                    Text('1')
                  ]).alphabetic()
              ),

              //Other method
              SizedBox(height: 10),

              Divider(),

              SizedBox(height: 10),

              AzText('Other methods for mainAxisAlignment').fs(14).bold(),

              codeSnippet('''
AzRow([
  Text('1')
])
.ideographic()            '''),


              SizedBox(height: 20),

            ]).crossStart().toContainer().px(10.0)
        )
    );
  }
}
