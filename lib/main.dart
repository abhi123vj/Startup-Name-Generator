import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp()); //instance passed
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionlist = ["kastro fen ano?", "psyco fen ano"];

  void updateQuestion() {
    setState(() {
      if (questionIndex == 0)
        questionIndex = 1;
      else
        questionIndex = 0;
    });
  }

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Title'),
        ),
        body: Column(
          children: [
            Question(questionlist[questionIndex]),
            RaisedButton(child: Text("kastro"), onPressed: updateQuestion),
            RaisedButton(child: Text("Psyco"), onPressed: updateQuestion),
            RaisedButton(child: Text("Njana"), onPressed: updateQuestion),
          ],
        ),
      ),
    );
  }
}
