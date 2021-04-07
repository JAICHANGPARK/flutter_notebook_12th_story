import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LectureHomePage extends StatefulWidget {
  @override
  _LectureHomePageState createState() => _LectureHomePageState();
}

class _LectureHomePageState extends State<LectureHomePage> {
  int bottomTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                  Colors.white,
                  Colors.blue[50]!,
                  Colors.blue[100]!,
                ])),
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              height: 72,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 28,
                    onPressed: () {
                      setState(() {
                        bottomTab = 0;
                      });
                    },
                    icon: Icon(LineIcons.clock),
                    color: bottomTab == 0 ? Colors.blue : Colors.grey,
                  ),
                  IconButton(
                      color: bottomTab == 1 ? Colors.blue : Colors.grey,
                      iconSize: 28,
                      onPressed: () {
                        setState(() {
                          bottomTab = 1;
                        });
                      },
                      icon: Icon(LineIcons.comment)),
                  IconButton(
                      color: bottomTab == 2 ? Colors.blue : Colors.grey,
                      iconSize: 28,
                      onPressed: () {
                        setState(() {
                          bottomTab = 2;
                        });
                      },
                      icon: Icon(LineIcons.stream)),
                  IconButton(
                      color: bottomTab == 3 ? Colors.blue : Colors.grey,
                      iconSize: 28,
                      onPressed: () {
                        setState(() {
                          bottomTab = 3;
                        });
                      },
                      icon: Icon(LineIcons.cog)),
                ],
              ),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
              left: 0,
              top: 64,
              right: 0,
              bottom: 84,
              child: Column(
                children: [
                  Expanded(
                      flex:2,
                      child: Placeholder()),
                  Expanded(
                      flex: 2,
                      child: Placeholder()),
                  Expanded(
                      flex: 2,
                      child: Placeholder()),
                  Expanded(
                      child: Placeholder()),
                ],
              ))
        ],
      ),
    );
  }
}
