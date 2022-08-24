import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AudioPlayer audioPlugin = AudioPlayer();
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You Won!',
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SpinKitPumpingHeart(
                  color: Colors.white,
                  size: 60.0,
                ),
                SizedBox(
                  width: 200,
                ),
                SpinKitPumpingHeart(
                  color: Colors.white,
                  size: 60.0,
                ),
              ],
            ),
            ClipOval(
              child: Image.asset(
                'assets/trophy.jpeg',
                height: 300,
                width: 200,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 200,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Music Player', style: TextStyle(fontSize: 25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            iconSize: 45.0,
                            onPressed: () {},
                            icon: Icon(Icons.skip_previous_rounded)),
                        IconButton(
                            iconSize: 45.0,
                            onPressed: () {
                              
                            },
                            icon: Icon(
                              Icons.play_arrow_rounded,
                            )),
                        IconButton(
                            iconSize: 45.0,
                            onPressed: () {},
                            icon: Icon(Icons.skip_next_rounded)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
