import 'dart:ffi';

import 'package:flutter/material.dart';
import '../controller/question_widget.dart';

class ClassAndConstructor extends StatefulWidget {
  ClassAndConstructor({Key key}) : super(key: key);

  @override
  _ClassAndConstructorState createState() => _ClassAndConstructorState();
}

class _ClassAndConstructorState extends State<ClassAndConstructor> {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex > 2) {
      _questionIndex = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'Who\'s your favorite writer?',
        'answers': ['Rob', 'Martin', 'Bob', 'Peter'],
      },
      {
        'question': 'Who\'s your favorite singer?',
        'answers': ['Milia', 'Julia', 'Catty', 'Elisa'],
      },
      {
        'question': 'Who\'s your favorite band?',
        'answers': ['PQR', 'MNC', 'ABC', 'XYZ'],
      },
    ];
    var answer = questions[_questionIndex]['answers'] as List<String>;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            QuestionWidget(
              questions: questions,
              questionIndex: _questionIndex,
            ),
            fetchAnswers(answer, _questionIndex),
          ],
        ),
      ),
    );
  }

  Container fetchAnswers(List<String> answer, int index) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.redAccent,
        child: Text(
          answer[index],
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: _answerQuestion,
      ),
    );
  }
}
