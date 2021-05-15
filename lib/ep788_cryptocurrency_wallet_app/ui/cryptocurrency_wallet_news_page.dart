import 'dart:math';

import 'package:badges/badges.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:chart_sparkline/flutter_sparkline.dart';
import 'package:flutter/material.dart';

class CryptocurrencyWalletNewsPage extends StatefulWidget {
  const CryptocurrencyWalletNewsPage({Key? key}) : super(key: key);

  @override
  _CryptocurrencyWalletNewsPageState createState() => _CryptocurrencyWalletNewsPageState();
}

class _CryptocurrencyWalletNewsPageState extends State<CryptocurrencyWalletNewsPage>
    with SingleTickerProviderStateMixin {
  int _bottomIndex = 2;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 2),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[50],
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Bryan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    Badge(
                      child: Icon(Icons.notifications),
                      badgeContent: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(child: Placeholder(), flex: 20),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
          setState(() {
            _bottomIndex = idx;
          });
          switch (idx) {
            case 0:
              Navigator.of(context).pop();
              return;
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart,
              ),
              label: "Portfolio"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
