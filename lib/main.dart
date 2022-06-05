import 'package:flutter/material.dart';
import 'package:vanessabirthday/pages/initialmessage.dart';
import 'package:vanessabirthday/pages/start.dart';

void main() => runApp(MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Start(),
      '/initialmessage': (context) => InitialMessage(),
    }));
