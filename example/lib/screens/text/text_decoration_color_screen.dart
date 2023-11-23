// import 'package:example/widgets/text.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../main.dart';
// import '../../widgets/column.dart';
//
// class TextOverflowScreen extends StatefulWidget {
//   const TextOverflowScreen({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<TextOverflowScreen> createState() => _TextOverflowScreenState();
// }
//
// class _TextOverflowScreenState extends State<TextOverflowScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AzColumn([
//                 SizedBox(height: 10,),
//                 AzText('With Package').fs(14).bold(),
//                 codeSnippet("AzText('Ellipsis: This is text').overflow(TextOverflow.ellipsis)"),
//                 codeSnippet("AzText('Fade: This is text').overflowFade()"),
//                 codeSnippet("AzText('Clip: This is text').overflowClip()"),
//                 codeSnippet("AzText('Ellipsis: This is text').overflowEllipsis()"),
//
//                 SizedBox(height: 20),
//
//                 AzText('With Extension').fs(14).bold(),
//                 codeSnippet("Text('Ellipsis: This is text').azText().overflow(TextOverflow.ellipsis)"),
//                 // codeSnippet("Text('This is text').azText().overflowFade()"),
//                 // codeSnippet("Text('This is text').azText().overflowClip()"),
//                 // codeSnippet("Text('This is text').azText().overflowEllipsis()"),
//
//                 SizedBox(height: 20),
//
//                 AzText('Without Package').fs(14).bold(),
//                 codeSnippet(
//                     "Text('This is text',\n"
//                         "  overflow: TextOverflow.ellipsis\n"
//                         "),"),
//
//                 SizedBox(height: 20),
//                 AzText('Output').fs(14).bold(),
//                 codeSnippetOutput(AzText("Ellipsis: This is text long text to see effect of TextOverflow property over screen").overflow(TextOverflow.ellipsis).fs(14)),
//                 // codeSnippetOutput(AzText("This is text long text to see effect of TextOverflow property over screen").overflowVisible().fs(14)),
//                 codeSnippetOutput(AzText("Fade: This is text long text to see effect of TextOverflow property over screen").overflowFade().fs(14)),
//                 codeSnippetOutput(AzText("Clip: This is text long text to see effect of TextOverflow property over screen").overflowClip().fs(14)),
//                 codeSnippetOutput(AzText("Ellipsis: This is text long text to see effect of TextOverflow property over screen").overflowEllipsis().fs(14)),
//               ]).crossStart().container().px(10.0),
//             ],
//           ),
//         )
//     );
//   }
// }
