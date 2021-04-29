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
                    Text("COIN"),
                    Text("AREA"),
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
