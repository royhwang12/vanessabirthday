import 'package:flutter/material.dart';
import 'dart:async';

class InitialMessage extends StatefulWidget {
  const InitialMessage({Key? key}) : super(key: key);

  @override
  State<InitialMessage> createState() => _InitialMessageState();
}

class _InitialMessageState extends State<InitialMessage> {
  double opacityLevel = 0.0;
  double buttonOpacityLevel = 0.0;

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
    });
  }

  void _changeButtonOpacity() {
    setState(() {
      buttonOpacityLevel = buttonOpacityLevel == 0 ? 1.0 : 0.0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    opacityLevel = 0;
    Future.delayed(Duration.zero, () => _changeOpacity());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 5),
              child: Text(
                'You must pass this quiz to access the app',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 20),
              child: TextButton(
                onPressed: () {},
                child: Text('START'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
