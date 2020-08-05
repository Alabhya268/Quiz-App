import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  const Result(this.resultScore,this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'Decent Person';
    }
    else if(resultScore<= 12)
      {
        resultText = ' Good Person';
      }
    else if (resultScore<= 16)
      {
        resultText='Awesome Person';
      }
    else{
      resultText = 'Best Person';
    }
    return resultText;
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Container(
    child: Center(
    child: Text(
      resultPhrase,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    ),
    ),
      FlatButton(onPressed: resetQuiz, child: Text('Reset Quiz',style: TextStyle(color: Colors.blueAccent),),),],
    );
    }
      
  }
