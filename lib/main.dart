import 'package:flutter/material.dart';
import 'package:quizapp/answers.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import 'questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questiontext': 'What\'s your favorite color ?',
      'answers': [{'text':'Red','Score' : 5}, {'text':'Blue','Score' : 3}, {'text':'Green','Score': 1}]
    },
    {
      'questiontext': 'What\'s your favorite animal ?',
      'answers': [{'text':'Lion','Score' : 5}, {'text':'Dinosaur','Score' : 3}, {'text':'Whale','Score': 1}]
    },
    {
      'questiontext': 'What\'s your favorite city ?',
      'answers': [{'text':'Lucknow','Score' : 5}, {'text':'Vanaras','Score' : 3}, {'text':'Bangalore','Score': 1}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    if (_questionIndex < _question.length) {
      setState(() {
        _questionIndex += 1;
      });
      _totalScore += score;
      print(_questionIndex);
    } else {
      print('You did it');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                question: _question,
              )
            : Result(_totalScore),
      ),
    );
  }
}
