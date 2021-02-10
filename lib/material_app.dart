import 'package:flutter/material.dart';

import 'chapter-one-string/dart_string.dart';

class HowFlutterUsesDartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How Flutter uses Dart',
      home: ChapterOneString(),
    );
  }
}
