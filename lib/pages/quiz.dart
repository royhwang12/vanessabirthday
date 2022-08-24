import 'dart:ui';
import 'package:vanessabirthday/pages/question.dart';
import 'package:flutter/material.dart';
import 'package:vanessabirthday/pages/quiz_controller.dart';

QuizController qc = QuizController();

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

List<Icon> scoreTracker = [];

class _QuizState extends State<Quiz> {
  void checkAnswer(bool userAnswer) {
    setState(() {
      if (userAnswer == qc.getAnswer) {
        scoreTracker.add(Icon(
          Icons.check_circle,
          color: Colors.greenAccent,
        ));
        if (qc.questionNumber < qc.questions.length - 1) {
          qc.nextQuestion();
        } else {
          Navigator.pushReplacementNamed(context, '/home');
        }
      } else {
        scoreTracker.clear();
        qc.questionNumber = 0;
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Quiz'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 5,
                  child: Center(
                    child: Text(
                      qc.getQuestion,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                  child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                onPressed: () {
                  setState(() {
                    checkAnswer(true);
                  });
                },
                child: Text('TRUE',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              )),
              SizedBox(height: size.height * 0.02),
              Expanded(
                  child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
                onPressed: () {
                  setState(() {
                    checkAnswer(false);
                  });
                },
                child: Text('FALSE',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              )),
              SizedBox(height: size.height * 0.02),
              Row(
                children: scoreTracker,
              )
            ]),
      )),
    );
  }
}
