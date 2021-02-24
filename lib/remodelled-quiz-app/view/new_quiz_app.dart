import 'package:flutter/material.dart';
import './new_quiz_app_home.dart';

class NewQuizApp extends StatelessWidget {
  const NewQuizApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewQuizAppHome(),
    );
  }
}
