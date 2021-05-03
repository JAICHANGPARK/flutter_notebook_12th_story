import 'package:flutter/material.dart';

class ScreenTimeHomePage extends StatefulWidget {
  @override
  _ScreenTimeHomePageState createState() => _ScreenTimeHomePageState();
}

class _ScreenTimeHomePageState extends State<ScreenTimeHomePage> {
  int _bottomIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good afternoon!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                        Text("DECEMBER 13TH"),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(color: Colors.teal[50], borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              _bottomIdx = idx;
            });
          },
          currentIndex: _bottomIdx,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Activity"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Family"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Friends"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Coach"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings"),
          ]),
    );
  }
}
