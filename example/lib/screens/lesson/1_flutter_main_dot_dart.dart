import 'package:example/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';


class FlutterMainDotDart extends StatefulWidget {
  const FlutterMainDotDart({super.key, required this.title});

  final String title;

  @override
  State<FlutterMainDotDart> createState() => _FlutterMainDotDartState();
}

class _FlutterMainDotDartState extends State<FlutterMainDotDart> {

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
              AzText('This is the main file of your app which cause to run your app'),
              SizedBox(height: 10,),
              codeSnippet('''
// This function is being call when app run

void main() {

  // MyApp() this is the class name which you want to fun at the start fo file
  
  runApp(const MyApp());

}

// Now we create the class "MyApp"
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is my first app'),
    );
  }
}
              '''),
            ],
          ),
        )
    );
  }
}
