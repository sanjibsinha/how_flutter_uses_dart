import 'package:flutter/material.dart';
import 'package:how_flutter_uses_dart/chapter-two/view/class_and_constructor.dart';

class ChapterTwoFirstPage extends StatelessWidget {
  const ChapterTwoFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Classes and Constructors',
        ),
      ),
      body: ClassAndConstructor(),
    );
  }
}
