import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result(this.resultScore);

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
    return Container(
      child: Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
