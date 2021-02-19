import 'package:flutter/material.dart';
// import 'package:how_flutter_uses_dart/chapter-one-string/small-profile-app/view/small_profile_app.dart';
import 'package:how_flutter_uses_dart/chapter-two/view/chapter_two_first_page.dart';

// import 'chapter-one-string/dart_string.dart';

class HowFlutterUsesDartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'How Flutter uses Dart',
      // home: ChapterOneString(),
      // home: SmallProfileApp(),
      home: ChapterTwoFirstPage(),
    );
  }
}
