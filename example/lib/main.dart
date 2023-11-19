import 'dart:math';
import 'dart:ui';

import 'package:example/screens/text_screen.dart';
import 'package:example/widgets/button.dart';
import 'package:example/widgets/container.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),


      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AzButton(
                // AzText('a').defaultColor()
                AzText('a')
            )
            .primaryOutline()
            // .minHeight(10.0)
            // .maxHeight(200.0)
            .onPressed((){
              print(1);
            })
            // .container()
            // .width(100.0)
            ,
            TextButton(
              style: ButtonStyle(

              ),
              onPressed: () { },
              child: Text('TextButto 1'),
            ),

            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
                onSurface: Colors.green,
              ),
              onPressed: null,
              child: Text('TextButton 3'),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () { },
              child: Text('TextButton 2'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black87,
                minimumSize: Size(88, 36),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
              onPressed: () { },
              child: Text('Looks like an OutlineButton'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () { },
              child: Text('ElevatedButton with custom foreground/background'),
            ),
            TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused))
                        return Colors.green;
                      if (states.contains(MaterialState.hovered))
                        return Colors.green;
                      if (states.contains(MaterialState.pressed))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
              ),
              onPressed: () { },
              child: Text('TextButton with custom overlay colors'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled))
                        return Colors.green;
                      return null; // Defer to the widget's default.
                    }),
                foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled))
                        return Colors.blue;
                      return null; // Defer to the widget's default.
                    }),
              ),
              onPressed: null,
              child: Text('ElevatedButton with custom disabled colors'),
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
                side: MaterialStateProperty.resolveWith<BorderSide>(
                        (Set<MaterialState> states) {
                      final Color color = states.contains(MaterialState.pressed)
                          ? Colors.blue
                          : Colors.green;
                      return BorderSide(color: color, width: 2);
                    }
                ),
              ),
              onPressed: () { },
              child: Text('OutlinedButton with custom shape and border'),
            ),
            Text('abc'),

            AzText("Tutorial of Flutter & Az").fs(24).bold().container().px(10.0),
            Divider(),
            AzText("AzText/Text").fs(20).bold().gestureDetector().onTapUp((p0) {
              Navigate(context).to(
                  screen: TextScreen(title: 'AzText/Text')
              );
            }).container().px(10.0),
            Divider(),

            AzText('Az Text')
            // .color(Colors.green)
            // .primaryColor()
            .letterSpacing(5)
            .wordSpacing(10)
            .textBaseline(TextBaseline.alphabetic)
            .textBaselineAlphabetic()
            .textBaselineIdeographic()
            .height(5)
            .leadingDistribution(TextLeadingDistribution.proportional)
            .leadingDistributionEven()
            .leadingDistributionProportional()
            .locale(Locale('en'))
            .foreground(Paint()
              ..style = PaintingStyle.stroke
              ..color = Colors.green
              ..strokeWidth = 2)
            .background(Paint()
              ..style = PaintingStyle.stroke
              ..color = Colors.green
              ..strokeWidth = 2)
            .shadows([
              Shadow(
                  color: Colors.green,
                  blurRadius: 5,
                  offset: Offset(0, 0))
              ])
            .fontFeatures([
              FontFeature.enable('liga'), // Enable ligatures
              FontFeature.enable('dlig'), // Enable discretionary ligatures
              FontFeature.enable('smcp'), // Enable small caps
            ])
            .fontVariations([
              FontVariation('wght', 500), // Font weight (e.g., 500 for medium)
              FontVariation('wdth', 150), // Font width (e.g., 150 for expanded)
            ])
            .decoration(TextDecoration.underline)
            .decorationLineThrough()
            .decorationOverline()
            .decorationUnderline()
            .decorationNone()
            .decorationColor(Colors.red)
            .decorationStyle(TextDecorationStyle.double)
            .decorationStyle(TextDecorationStyle.solid)
            .decorationStyle(TextDecorationStyle.dashed)
            .decorationStyle(TextDecorationStyle.dotted)
            .decorationStyle(TextDecorationStyle.wavy)
            .decorationThickness(50)
            .fontFamily('family name')
            .fontFamilyFallback(['family fallback name'])
            .package('package')
            .overflow(TextOverflow.ellipsis)
            .overflowEllipsis()
            .overflowClip()
            .overflowFade()
            .overflowVisible()
            .fs(20)
            .fw(FontWeight.normal)
            .normal()
            .bold()
            .w100()
            .w200()
            .w300()
            .w400()
            .w500()
            .w600()
            .w700()
            .w800()
            .w900()
            ,
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

      ,
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}


codeSnippet(String code){
  return AzText(code).fs(14).container().cardV1().widthFull().p(10);
}

codeSnippetOutput(Widget widget){
  return Container(child: widget,).azContainer().cardV1().bg(Colors.black12.withOpacity(0.01)).widthFull().p(10);
}
