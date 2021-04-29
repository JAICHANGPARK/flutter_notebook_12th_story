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
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
