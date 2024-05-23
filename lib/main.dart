import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

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
      home: const Quizz(),
    );
  }
}

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Quizpage(),
      )),
    );
  }
}

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
//  List<String> questions = [
//    'You can lead a cow down stairs but not up stairs.',
//    'Approximately one quarter of human bones are in the feet.',
//    'A slug\'s blood is green.'
//  ];
//  List<bool> answers = [false, true, true];

  List<Widget> scoreSvd = [];

  List<Question> questionBank = [
    Question(q: 'Soufiane kyt3lm l flutter.', a: true),
    Question(q: 'Akifsoufiane.com howa portfolio dyali ?', a: false),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
    Question(q: 'Sma zr9a', a: true),
  ];

  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // To make it rectangular
                ),
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool correctAnswer =
                      questionBank[questionNumber].questionAnswer;
                  if (correctAnswer == true) {
                    print('user got it right.');
                    scoreSvd.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    print('user got it wrong.');
                    scoreSvd.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // To make it rectangular
                ),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool correctAnswer =
                      questionBank[questionNumber].questionAnswer;
                  if (correctAnswer == false) {
                    print('user got it right.');
                    scoreSvd.add(Icon(
                      Icons.check,
                      color: Colors.green,
                    ));
                  } else {
                    print('user got it wrong.');
                    scoreSvd.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ));
                  }
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreSvd,
        )
      ],
    );
  }
}
