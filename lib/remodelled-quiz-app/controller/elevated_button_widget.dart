import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/question_and_answer_model.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({Key key, this.answer}) : super(key: key);
  final String answer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          // context.read<QuestionAndAnswerModel>().incrementCounter(),
          Provider.of<QuestionAndAnswerModel>(context, listen: false)
              .incrementCounter(),
      child: Text(
        answer,
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
