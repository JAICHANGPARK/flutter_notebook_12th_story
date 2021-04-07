import 'package:flutter/cupertino.dart';
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
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "April, 21",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
                                ),
                                Text(
                                  "Hi, Dreamwalker",
                                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Stack(children: [

                              CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/19484515?v=4"),
                              ),
                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 8,
                                  )),
                            ])
                          ],
                        ),
                      )),
                  Expanded(flex: 2, child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: StadiumBorder()
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search group by name",
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  )),
                  Expanded(flex: 2, child: Placeholder()),
                  Expanded(flex: 10, child: Placeholder()),
                ],
              ))
        ],
      ),
    );
  }
}
