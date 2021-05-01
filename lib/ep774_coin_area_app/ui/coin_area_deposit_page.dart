import 'package:flutter/material.dart';

class CoinAreaDepositPage extends StatefulWidget {
  @override
  _CoinAreaDepositPageState createState() => _CoinAreaDepositPageState();
}

class _CoinAreaDepositPageState extends State<CoinAreaDepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Column(
                        children: [
                          Text(
                            "MAKE DEPOSIT",
                            style: TextStyle(letterSpacing: 2, color: Colors.white, fontWeight: FontWeight.bold),
                          )
                        ],
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
