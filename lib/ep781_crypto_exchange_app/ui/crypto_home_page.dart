import 'package:flutter/material.dart';

class CryptoExchangeHomePage extends StatefulWidget {
  const CryptoExchangeHomePage({Key? key}) : super(key: key);

  @override
  _CryptoExchangeHomePageState createState() => _CryptoExchangeHomePageState();
}

class _CryptoExchangeHomePageState extends State<CryptoExchangeHomePage> {
  // 71 0 249 blue 47 00 f9
  // 119 254 114 green  77 fE 72
  // 243 247 253 background f4 f7 fd
  int _selectedTab = 0;
  Color _cryptoAppGreenColor = Color(0xff77fe72);
  Color _cryptoAppBlueColor = Color(0xff4700f0);
  Color _cryptoAppBackgroundColor = Color(0xfff4f7fd);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _cryptoAppBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
              flex: 3,
            ),
            Expanded(
              child: Placeholder(),
              flex: 22,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(
                    color: _cryptoAppBlueColor,
                  )),
                  Expanded(
                      child: Container(
                    color: _cryptoAppGreenColor,
                  )),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (idx){
          setState(() {
            _selectedTab = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_outlined), label: "Markets"),
        ],
      ),
    );
  }
}
