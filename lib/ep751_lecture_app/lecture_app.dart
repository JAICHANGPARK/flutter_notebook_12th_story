import 'package:flutter/material.dart';

class LectureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => LectureHomePage()
      },
    );
  }
}
