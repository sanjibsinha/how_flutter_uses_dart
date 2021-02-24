import 'package:flutter/material.dart';
import './remodelled-quiz-app/model/question_and_answer_model.dart';
import 'package:provider/provider.dart';
import './remodelled-quiz-app/view/new_quiz_app.dart';

void main() {
  // runApp(HowFlutterUsesDartApp());
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => Counter()),
        // ChangeNotifierProvider(create: (_) => MyCounter()),
        ChangeNotifierProvider(create: (_) => QuestionAndAnswerModel()),
      ],
      child: NewQuizApp(),
    ),
  );
}
