import 'package:flutter/material.dart';
import 'package:vanessabirthday/pages/home.dart';
import 'package:vanessabirthday/pages/initialmessage.dart';
import 'package:vanessabirthday/pages/start.dart';
import 'package:vanessabirthday/pages/quiz.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Start(),
      '/initialmessage': (context) => InitialMessage(),
      '/quiz': (context) => Quiz(),
      '/home':(context) => Home(),
    }));
