import 'package:example/widgets/column.dart';
import 'package:example/widgets/icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/row.dart';
import '../../widgets/text.dart';


class RowCrossAxisAlignmentScreen extends StatefulWidget {
  const RowCrossAxisAlignmentScreen({super.key, required this.title});

  final String title;

  @override
  State<RowCrossAxisAlignmentScreen> createState() => _RowCrossAxisAlignmentScreenState();
}

class _RowCrossAxisAlignmentScreenState extends State<RowCrossAxisAlignmentScreen> {

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

              AzText('How to use row').fs(14),

              SizedBox(height: 20),

              AzText('With Package').fs(14).bold(),
// AzRow([Text('1')]).crossStart()
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('1')
//               ],
//             ),
              codeSnippet('''
AzRow([
  Text('1')
])
.crossCenter()            '''),

              SizedBox(height: 20),

              AzText('With Extension').fs(14).bold(),
              codeSnippet('''
Row(
    children: [
      Text('1')
    ],
  )
.azRow()
.crossCenter()            '''),

              SizedBox(height: 20),

              // Icon(Icons.add, color: Colors.green,),

              AzText('Without Package').fs(14).bold(),
              codeSnippet('''
Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('1')
    ],
  )            '''),

              SizedBox(height: 20),
              AzText('Output').fs(14).bold(),

              codeSnippetOutput(
                  AzRow([
                    Text('1')
                  ]).crossCenter()
              ),

              //Other method
              SizedBox(height: 10),

              Divider(),

              SizedBox(height: 10),

              AzText('Other methods for crossAxisAlignment').fs(14).bold(),

              codeSnippet('''
AzRow([
  Text('1')
])
.crossStart()            '''),

              SizedBox(height: 20),

              codeSnippet('''
AzRow([
  Text('1')
])
.crossEnd()            '''),


              SizedBox(height: 20),
              
            ]).crossStart().container().px(10.0)
        )
    );
  }
}
