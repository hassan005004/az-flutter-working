import 'package:example/widgets/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';
import '../../widgets/text.dart';


class ColumnCrossAxisAlignmentScreen extends StatefulWidget {
  const ColumnCrossAxisAlignmentScreen({super.key, required this.title});

  final String title;

  @override
  State<ColumnCrossAxisAlignmentScreen> createState() => _ColumnCrossAxisAlignmentScreenState();
}

class _ColumnCrossAxisAlignmentScreenState extends State<ColumnCrossAxisAlignmentScreen> {

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

              AzText('How to use column').fs(14),

              SizedBox(height: 20),

              AzText('With Package').fs(14).bold(),
// AzColumn([Text('1')]).crossStart()
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('1')
//               ],
//             ),
              codeSnippet('''
AzColumn([
  Text('1')
])
.crossCenter()            '''),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet('''
Column(
    children: [
      Text('1')
    ],
  )
.azColumn()
.crossCenter()            '''),

              SizedBox(height: 20),

              // Icon(Icons.add, color: Colors.green,),

              AzText('Without Package').fs(14).bold(),
              codeSnippet('''
Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('1')
    ],
  )            '''),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(
                  AzColumn([
                    Text('1')
                  ]).crossCenter()
              ),

              //Other method
              SizedBox(height: 10),

              Divider(),

              SizedBox(height: 10),

              AzText('Other methods for crossAxisAlignment').fs(14).bold(),

              codeSnippet('''
AzColumn([
  Text('1')
])
.crossStart()            '''),

              SizedBox(height: 20),

              codeSnippet('''
AzColumn([
  Text('1')
])
.crossEnd()            '''),


              SizedBox(height: 20),
              
            ]).crossStart().container().px(10.0)
        )
    );
  }
}
