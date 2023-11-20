import 'package:example/widgets/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';
import '../../widgets/text.dart';


class ColumnVerticalDirectionScreen extends StatefulWidget {
  const ColumnVerticalDirectionScreen({super.key, required this.title});

  final String title;

  @override
  State<ColumnVerticalDirectionScreen> createState() => _ColumnVerticalDirectionScreenState();
}

class _ColumnVerticalDirectionScreenState extends State<ColumnVerticalDirectionScreen> {

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
              // AzColumn([Text('1')]).up(),
              // Column(
              //   verticalDirection: VerticalDirection.up,
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
.up()            '''),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet('''
Column(
    children: [
      Text('1')
    ],
  )
.azColumn()
.up()            '''),

              SizedBox(height: 20),

              // Icon(Icons.add, color: Colors.green,),

              AzText('Without Package').fs(14).bold(),
              codeSnippet('''
Column(
    verticalDirection: VerticalDirection.up,
    children: [
      Text('1')
    ],
  )            '''),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(
                  AzColumn([
                    Text('1')
                  ]).mainCenter()
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
.up()            '''),

              SizedBox(height: 20),

              codeSnippet('''
AzColumn([
  Text('1')
])
.down()            '''),


              SizedBox(height: 20),

            ]).crossStart().container().px(10.0)
        )
    );
  }
}
