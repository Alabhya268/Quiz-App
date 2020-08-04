import 'package:flutter/material.dart';
import 'questions.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>
{
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    var question = ['What\'s your favorite color ?',
      'What\'s your favorite animals ?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Column(
          children: [
            Questions(question[_questionIndex],),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed:_answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            )
          ],
        ),
      ),
    );
  }
}
