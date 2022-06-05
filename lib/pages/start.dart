import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Heart extends StatelessWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpinKitPumpingHeart(
          color: Colors.white,
          size: 60.0,
        ),
        SizedBox(
          width: 100,
        ),
        SpinKitPumpingHeart(
          color: Colors.white,
          size: 60.0,
        ),
      ],
    );
  }
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 71, 103, 1),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinKitPumpingHeart(
                      color: Colors.white,
                      size: 60.0,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinKitPumpingHeart(
                      color: Colors.white,
                      size: 60.0,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    SpinKitPumpingHeart(
                      color: Colors.white,
                      size: 60.0,
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.asset(
                    'assets/IMG_0521.HEIC',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Happy Birthday Beautiful <3',
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/initialmessage');
                    },
                    icon: Icon(
                      Icons.mood,
                      color: Colors.grey[300],
                    ),
                    label: Text(
                      'Start!',
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 20.0,
                      ),
                    )),
                Heart(),
              ]),
        ),
      ),
    );
  }
}
