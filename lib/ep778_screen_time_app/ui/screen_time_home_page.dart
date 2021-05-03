import 'package:flutter/material.dart';


class ScreenTimeHomePage extends StatefulWidget {
  @override
  _ScreenTimeHomePageState createState() => _ScreenTimeHomePageState();
}

class _ScreenTimeHomePageState extends State<ScreenTimeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey, items: [
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Activity"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Family"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Friends"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Activity"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Activity"),
      ],
        
      ),
    );
  }
}
