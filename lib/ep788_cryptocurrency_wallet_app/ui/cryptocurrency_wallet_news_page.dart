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
