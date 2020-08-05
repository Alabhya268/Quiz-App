import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String,Object>> question;
  final int questionIndex;
  Quiz({@required this.questionIndex,@required this.answerQuestion,@required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          question[questionIndex]['questiontext'],
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) => Answer(() => answerQuestion(answer['Score']), answer['text']))
            .toList(),
      ],
    );
  }
}
