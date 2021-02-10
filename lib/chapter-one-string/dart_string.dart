import 'package:flutter/material.dart';

class ChapterOneString extends StatelessWidget {
  final String stringWithSingleQuote = 'A String with Single Quote';

  final String stringWithDoubleQuote = "A String with Single Quote";

  final String stringWithTripleQuote = ''' This is a multi line string.
Now we can write multiline text.
A String starts and ends with triple Quote''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How Flutter uses Dart'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textWithSingleQuote(),
            SizedBox(
              height: 10,
            ),
            textWithDoubleQuote(),
            SizedBox(
              height: 10,
            ),
            textWithTripleQuote(),
          ],
        ),
      ),
    );
  }

  Widget textWithSingleQuote() => Text(
        '$stringWithSingleQuote',
        style: textStyleBoldAndSize30,
      );

  Widget textWithDoubleQuote() => Text(
        '$stringWithDoubleQuote',
        style: textStyleNormalAndSize35,
      );

  Widget textWithTripleQuote() => Text(
        '$stringWithTripleQuote',
        style: aMultilineBoldTextStyleWithSize20,
      );

  final textStyleBoldAndSize30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  final textStyleNormalAndSize35 = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.normal,
    color: Colors.red,
  );

  final aMultilineBoldTextStyleWithSize20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
