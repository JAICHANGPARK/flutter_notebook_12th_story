import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class LectureHomePage extends StatefulWidget {
  @override
  _LectureHomePageState createState() => _LectureHomePageState();
}

class _LectureHomePageState extends State<LectureHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(LineIcons.clock)),
            ],
          ),
        ),
      ),
    );
  }
}
