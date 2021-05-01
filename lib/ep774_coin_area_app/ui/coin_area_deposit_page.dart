import 'package:flutter/cupertino.dart';
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MAKE DEPOSIT",
                            style: TextStyle(letterSpacing: 2, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "Step 1",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 2,
                                  width: 56,
                                  color: Colors.grey,
                                ),
                              ),
                              Text("Step 2"),
                            ],
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
