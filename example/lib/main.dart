import 'package:example/screens/ColumnScreen.dart';
import 'package:example/screens/IconScreen.dart';
import 'package:example/screens/ImageScreen.dart';
import 'package:example/screens/RowScreen.dart';
import 'package:example/screens/TextScreen.dart';
import 'package:example/widgets/button.dart';
import 'package:example/widgets/container.dart';
import 'package:example/widgets/list_tile.dart';
import 'package:example/widgets/navigate.dart';
import 'package:example/widgets/text.dart';
import 'package:example/widgets/text_form_filed.dart';
import '../helper/extensions.dart';
import 'package:example/widgets/wrap.dart';
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Container(
              height: 50,
              foregroundDecoration: BoxDecoration(
                color: Colors.red,
              ),
            ).azContainer(),

            const Text('Ink well button text',
              overflow: TextOverflow.ellipsis,
              textScaleFactor: 2,
              maxLines: 2,
              // style: TextStyle(
              //       color: Colors.red,
              //       fontSize: 50
              //     ),
                )
              .azText()
              .fs(15)
              .color(Colors.green)
              .toContainer().p(50)
              .toInkWell().borderRadius(10).onTap(() {
                print('asd');
            }),


            // responsive will give better result inside AzWarp/Wrap
            AzWrap([

              // Example of text responsive 1
              AzText('Responsive Text').toContainer().wFull().dangerSolidThree().toResponsive().sm1(context),

              // Example of text responsive 2
              AzText('Responsive Text').toContainer().wFull().primarySolidThree().toResponsive().col('col-5'),

            ]),

            // Example of TextFormFiled Border
            AzTextFormField().borderSecondary(),

            // Example of Button with border and radius
            AzButton('Button')
            .wFull()
            .primarySolidTwo()
            .radius(5)
            .onPressed(() {
              print(1);
            }),

            AzText("Widget of AzPackage/Flutter").fs(20).bold().toContainer().pLTRB(10.0, 10.0, 10.0, 0.0),

            AzText("At the moment you will find the commonly used things in this package as well as some supporting pre defined methos to make work smooth & easier")
                .toContainer().p(10.0),

            Divider(height:0),

            AzText("Done").fs(16).color(Colors.green).toCenter().toContainer().px(10.0).py(10),

            Divider(height:0),

            AzListTile(AzText("AzText/Text").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzIcon/Icon").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: IconScreen(title: 'AzIcon/Icon')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzColumn/Column").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: ColumnScreen(title: 'AzColumn/Column')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzRow/Row").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: RowScreen(title: 'AzRow/Row')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzImage").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: ImageScreen(title: 'AzImage')
              );
            }),

            Divider(height:0),

            AzText("Not Done").fs(16).color(Colors.red).toCenter().toContainer().px(10.0).py(10),

            Divider(height:0),

            AzListTile(AzText("AzTextFormFiled/TextFormFiled").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),


            Divider(height:0),

            AzListTile(AzText("AzButton/Button").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzWrap/Wrap").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzStack/Stack").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzPositioned/Positioned").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzListTile/ListTile").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzRadioTile/RadioTile").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzDropDown/Dropdown").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzGestureDetector/GestureDetector").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzInkWell/InkWell").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzGridView/GridView").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            AzListTile(AzText("AzListView/ListView").fs(16)).onTap(() {
              AzNavigate(context).to(
                  screen: TextScreen(title: 'AzListTile(AzText/Text')
              );
            }),

            Divider(height:0),

            // AzListTile(AzText("Pagination").fs(16)).onTap(() {
            //   AzNavigate(context).to(
            //       screen: TextScreen(title: 'AzListTile(AzText/Text')
            //   );
            // }),

            // Divider(height:0),

            // AzListTile(AzText("Navigation").fs(16)).onTap(() {
            //   AzNavigate(context).to(
            //       screen: TextScreen(title: 'AzListTile(AzText/Text')
            //   );
            // }),

            // Divider(height:0),
          ],
        ).azColumn().mainCenter(),
      )
          // .toContainer()
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
  return AzText(code).fs(14).toContainer().cardV1(Colors.white).wFull().p(10);
}

codeSnippetOutput(Widget widget){
  return Container(child: widget,)
      .azContainer()
      .cardV1(Colors.white)
      .bg(Colors.black12.withOpacity(0.01))
      .wFull()
      .p(10);
}
