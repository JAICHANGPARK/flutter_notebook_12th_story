import 'package:flutter/material.dart';

class CoinAreaHomePage extends StatefulWidget {
  @override
  _CoinAreaHomeAppState createState() => _CoinAreaHomeAppState();
}

class _CoinAreaHomeAppState extends State<CoinAreaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202529),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: TextStyle(
                          color: Colors.greenAccent,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "COIN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "AREA",
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                      Spacer(),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(flex: 20, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
