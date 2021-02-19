import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key key,
    @required this.questions,
    @required int questionIndex,
  })  : _questionIndex = questionIndex,
        super(key: key);

  final List<Map<String, Object>> questions;
  final int _questionIndex;

  @override
  Widget build(BuildContext context) {
    return Text(
      questions[_questionIndex]['question'],
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
