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
              bottom: 64,
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
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        decoration: ShapeDecoration(color: Colors.white, shape: StadiumBorder()),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search group by name",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                )),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 24,
                          runSpacing: 8,
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  'Upcoming',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  'Group',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  'Anytime',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  'Personal',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                                child: Text(
                                  '10 + days',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 10,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 240,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    children: [],
                                  ),
                                ),
                              ),
                            );
                          })),
                ],
              ))
        ],
      ),
    );
  }
}
