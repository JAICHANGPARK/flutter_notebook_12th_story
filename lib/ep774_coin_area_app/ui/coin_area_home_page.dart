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
                        color: Colors.greenAccent,
                      ),
                      Spacer(),
                      Text(
                        "COIN",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "AREA",
                        style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                      ),
                      Spacer(),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(flex: 20, child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 360,
                    child: Placeholder(),
                  ),
                  Container(
                    height: 360,
                    child: Placeholder(),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
