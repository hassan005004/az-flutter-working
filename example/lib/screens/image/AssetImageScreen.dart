import 'package:example/widgets/icon.dart';
import 'package:example/widgets/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../widgets/column.dart';
import '../../widgets/text.dart';


class AssetImageScreen extends StatefulWidget {
  const AssetImageScreen({super.key, required this.title});

  final String title;

  @override
  State<AssetImageScreen> createState() => _AssetImageScreenState();
}

class _AssetImageScreenState extends State<AssetImageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: AzColumn([
                //
                // AzImage().h(100).color(Colors.cyan).asset('assets/images/logo.png'),
                // AzImage().h(100).color(Colors.pink).network('https://zahidaz.com/assets/img/logo-zahidaz.png'),

                AzText('Limitations').bold(),
                AzText('asset or netowrk both can not use at once'),
                AzText('asset or netowrk method must be at last'),

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Text('1')
                //   ],
                // ),

                SizedBox(height: 10,),



                SizedBox(height: 20),

                AzText('With Package').bold(),

                AzText('Asset Image'),
                codeSnippet('''
AzImage()
.h(100)
.w(100)
.conver()
.color(Colors.cyan)
.asset('assets/images/logo.png')            '''),

                SizedBox(height: 20),

                AzText('Network Image'),
                codeSnippet('''
AzImage()
.h(100)
.w(100)
.conver()
.color(Colors.cyan)
.network('https://zahidaz.com/assets/img/logo-zahidaz.png')            '''),

                SizedBox(height: 20),

//                 AzText('With Extension').fs(14).bold(),
//                 codeSnippet('''
// Column(
//     children: [
//       Text('1')
//     ],
//   )
// .azColumn()
// .mainCenter()            '''),
//
//                 SizedBox(height: 20),
//
//                 // Icon(Icons.add, color: Colors.green,),
//
//                 AzText('Without Package').fs(14).bold(),
//                 codeSnippet('''
// Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Text('1')
//     ],
//   )            '''),
//
                SizedBox(height: 20),
                AzText('Output').fs(14).bold(),

                codeSnippetOutput(
                    AzImage().h(100).w(100).contain().color(Colors.cyan).asset('assets/images/logo.png')
                ),

                //Other method
                // SizedBox(height: 10),

                // Divider(),

                // SizedBox(height: 10),

                // AzText('Other methods for images').fs(14).bold(),

                // codeSnippet('''
// AzImage()
// .h(100)
// .w(100)
// .topLeft()
// .contain()
// .color(Colors.cyan)
// .asset('assets/images/logo.png')
// .mainStart()            '''),

                // SizedBox(height: 20),
              //
              ]).crossStart().mainSizeMax().container().widthFull().px(10.0),
            )
        )
    );
  }
}
