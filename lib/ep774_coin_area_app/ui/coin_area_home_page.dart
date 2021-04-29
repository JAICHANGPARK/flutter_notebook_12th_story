import 'package:flutter/material.dart';

class CoinAreaHomePage extends StatefulWidget {
  @override
  _CoinAreaHomeAppState createState() => _CoinAreaHomeAppState();
}

class _CoinAreaHomeAppState extends State<CoinAreaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Text("COIN"),
                    Text("AREA"),
                    Spacer(),
                    CircleAvatar(),
                  ],
                )),
            Expanded(
                flex: 20,
                child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
