import 'package:vanessabirthday/pages/question.dart';

class QuizController {
  int questionNumber = 0;

  List<Question> questions = [
    Question(question: 'Is the capital of Canada Ottawa?', answer: true),
    Question(
        question: 'Are there 195 countries in the world?', answer: true),
    Question(question: 'Is the GDP of Africa greater than Apple?', answer: false),
    Question(question: 'Are there 365 days in a year?', answer: true),
    Question(question: 'Does MLH stand for Major League Hacking?', answer: true),
    Question(question: 'Is the capital of the US Washington DC?', answer: true),
    Question(question: 'The Atomic Number for lithium is 3', answer: true),
    Question(question: 'A lunar eclipse occurs when the sun does not pass', answer: false),
    Question(question: 'The universe has existed for nearly 14 billion years', answer: true),

  ];

  String get getQuestion => questions[questionNumber].question;
  bool get getAnswer => questions[questionNumber].answer;

  void nextQuestion() {
    if (questionNumber < questions.length) {
      questionNumber++;
    }
  }
}
