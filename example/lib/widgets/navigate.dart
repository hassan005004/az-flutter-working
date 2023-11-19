import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigate{
  BuildContext context;
  Navigate(this.context);

  Widget animationBuilder (_, a, __, c) => FadeTransition(opacity: a, child: c);

  to({screen,
      duration = const Duration(seconds: 1),
      direction = 'no',
    }){
    Navigator.push(
      context,
      // MaterialPageRoute(builder: (context) => screen),
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => screen,
        transitionDuration: duration,
        transitionsBuilder: (context, animation, _, child) {
          var begin = Offset.zero;
          var end = Offset.zero;

          if(direction == 'no'){
            begin = const Offset(0.0, 0.0);
            end = Offset.zero;
          }else if(direction == 'downToUp'){
            begin = const Offset(0.0, 1.0);
            end = Offset.zero;
          }else if(direction == 'upToDown'){
            begin = const Offset(0.0, -1.0);
            end = Offset.zero;
          }else if(direction == 'rightToLeft'){
            begin = const Offset(1.0, 0.0);
            end = Offset.zero;
          }

          // begin = const Offset(0.0, -1.0);
          // end = Offset.zero;

          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  back(){
    Navigator.of(context).pop();
  }

}
