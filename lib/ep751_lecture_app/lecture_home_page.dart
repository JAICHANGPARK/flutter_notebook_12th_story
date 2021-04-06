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

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: BottomAppBar(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(

            ),
            height: 72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  iconSize: 28,
                  onPressed: (){
                  setState(() {
                    bottomTab = 0;
                  });
                }, icon: Icon(LineIcons.clock),
                color: bottomTab == 0 ? Colors.blue : Colors.grey,),
                IconButton(  color: bottomTab == 1 ? Colors.blue : Colors.grey,iconSize: 28,onPressed: (){setState(() {
                  bottomTab = 1;
                });}, icon: Icon(LineIcons.comment)),
                IconButton( color: bottomTab == 2 ? Colors.blue : Colors.grey, iconSize: 28,onPressed: (){setState(() {
                  bottomTab = 2;
                });}, icon: Icon(LineIcons.stream)),
                IconButton(  color: bottomTab == 3 ? Colors.blue : Colors.grey,iconSize: 28,onPressed: (){setState(() {
                  bottomTab = 3;
                });}, icon: Icon(LineIcons.cog)),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue[50]!,
                Colors.blue[100]!,
                Colors.blue[200]!,
                Colors.blue[300]!,

              ])
            ),

          )),
        ],
      ),
    );
  }
}
