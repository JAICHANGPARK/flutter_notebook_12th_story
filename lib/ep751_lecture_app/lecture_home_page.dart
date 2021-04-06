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
      bottomNavigationBar: BottomAppBar(
        child: Container(
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
              IconButton(onPressed: (){}, icon: Icon(LineIcons.comment)),
              IconButton(onPressed: (){}, icon: Icon(LineIcons.stream)),
              IconButton(onPressed: (){}, icon: Icon(LineIcons.cog)),
            ],
          ),
        ),
      ),
    );
  }
}
