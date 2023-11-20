import 'dart:math';
import 'dart:ui';

import 'package:example/screens/ColumnScreen.dart';
import 'package:example/screens/IconScreen.dart';
import 'package:example/screens/ImageScreen.dart';
import 'package:example/screens/RowScreen.dart';
import 'package:example/screens/TextScreen.dart';
import 'package:example/screens/lesson/1_flutter_main_dot_dart.dart';
import 'package:example/widgets/button.dart';
import 'package:example/widgets/container.dart';
import 'package:example/widgets/list_tile.dart';
import 'package:example/widgets/navigate.dart';
import 'package:example/widgets/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // OutlinedButton(
            //   style: OutlinedButton.styleFrom(
            //     primary: Colors.black87,
            //     minimumSize: Size(88, 36),
            //     padding: EdgeInsets.symmetric(horizontal: 16),
            //     shape: const RoundedRectangleBorder(
            //       borderRadius: BorderRadius.all(Radius.circular(2)),
            //     ),
            //   ),
            //   onPressed: () { },
            //   child: Text('Looks like an OutlineButton'),
            // ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.green, // background
            //     onPrimary: Colors.white, // foreground
            //   ),
            //   onPressed: () { },
            //   child: Text('ElevatedButton with custom foreground/background'),
            // ),
            // TextButton(
            //   style: ButtonStyle(
            //     overlayColor: MaterialStateProperty.resolveWith<Color?>(
            //             (Set<MaterialState> states) {
            //           if (states.contains(MaterialState.focused))
            //             return Colors.green;
            //           if (states.contains(MaterialState.hovered))
            //             return Colors.green;
            //           if (states.contains(MaterialState.pressed))
            //             return Colors.blue;
            //           return null; // Defer to the widget's default.
            //         }),
            //   ),
            //   onPressed: () { },
            //   child: Text('TextButton with custom overlay colors'),
            // ),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            //             (Set<MaterialState> states) {
            //           if (states.contains(MaterialState.disabled))
            //             return Colors.green;
            //           return null; // Defer to the widget's default.
            //         }),
            //     foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            //             (Set<MaterialState> states) {
            //           if (states.contains(MaterialState.disabled))
            //             return Colors.blue;
            //           return null; // Defer to the widget's default.
            //         }),
            //   ),
            //   onPressed: null,
            //   child: Text('ElevatedButton with custom disabled colors'),
            // ),
            // OutlinedButton(
            //   style: ButtonStyle(
            //     shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
            //     side: MaterialStateProperty.resolveWith<BorderSide>(
            //             (Set<MaterialState> states) {
            //           final Color color = states.contains(MaterialState.pressed)
            //               ? Colors.blue
            //               : Colors.green;
            //           return BorderSide(color: color, width: 2);
            //         }
            //     ),
            //   ),
            //   onPressed: () { },
            //   child: Text('OutlinedButton with custom shape and border'),
            // ),
            // Text('abc'),

            AzText("Widget of AzPackage/Flutter").fs(20).bold().container().pLTRB(10.0, 10.0, 10.0, 0.0),

            AzText("At the moment you will find the commonly used things in this package as well as some supporting pre defined methos to make work smooth & easier")
                .container().p(10.0),
            
            Divider(height:0),

            AzText("Done").fs(16).color(Colors.green).center().container().px(10.0).py(10),

            Divider(height:0),

            AzListTile(AzText("AzText/Text").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzIcon/Icon").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: IconScreen(title: 'AzIcon/Icon')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzColumn/Column").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: ColumnScreen(title: 'AzColumn/Column')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzRow/Row").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: RowScreen(title: 'AzRow/Row')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzImage").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: ImageScreen(title: 'AzImage')
              );
            }),

            Divider(height:0),

            AzText("Not Done").fs(16).color(Colors.red).center().container().px(10.0).py(10),

            Divider(height:0),

            AzListTile(AzText("AzTextFormFiled/TextFormFiled").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),


            Divider(height:0),

            AzListTile(AzText("AzButton/Button").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzWrap/Wrap").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzStack/Stack").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzPositioned/Positioned").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzListTile/ListTile").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzRadioTile/RadioTile").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzDropDown/Dropdown").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzGestureDetector/GestureDetector").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzInkWell/InkWell").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzGridView/GridView").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzListView/ListView").fs(16)).onTap(() {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            // AzListTile(AzText("Pagination").fs(16)).onTap(() {
            //   Navigate(context).to(
            //       screen: TextScreen(title: 'AzListTile(AzText/Text')
            //   );
            // }),

            // Divider(height:0),

            // AzListTile(AzText("Navigation").fs(16)).onTap(() {
            //   Navigate(context).to(
            //       screen: TextScreen(title: 'AzListTile(AzText/Text')
            //   );
            // }),

            // Divider(height:0),
          ],
        )
        ,
      )
          // .container()
          // .m(10.0)
          // .maxHeight(100.0).alignmentTopRight()
          // .borderColor(Colors.black)
          // .borderWidth(5)
          // .borderFromLTRB(true, true, true, true)

      // .borderColor(Colors.yellowAccent)

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}


codeSnippet(String code){
  return AzText(code).fs(14).container().cardV1().widthFull().p(10);
}

codeSnippetOutput(Widget widget){
  return Container(child: widget,)
      .azContainer()
      .cardV1()
      .bg(Colors.black12.withOpacity(0.01))
      .widthFull()
      .p(10);
}
