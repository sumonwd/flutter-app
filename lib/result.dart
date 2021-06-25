import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScrore;
  final resetHandler;
  Result(this.resultScrore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScrore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScrore <= 12) {
      resultText = "Pretty Likeable!";
    } else if (resultScrore <= 16) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: resetHandler,
          textColor: Colors.blue,
        )
      ]),
    );
  }
}
