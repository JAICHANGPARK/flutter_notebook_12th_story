import 'package:flutter/material.dart';

import 'lecture_home_page.dart';

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
