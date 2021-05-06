import 'package:flutter/material.dart';

class CryptoExchangeHomePage extends StatefulWidget {
  const CryptoExchangeHomePage({Key? key}) : super(key: key);

  @override
  _CryptoExchangeHomePageState createState() => _CryptoExchangeHomePageState();
}

class _CryptoExchangeHomePageState extends State<CryptoExchangeHomePage> {
  // 71 0 249 blue
  // 119 254 114 green  77 fE 72
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Placeholder(), flex: 3,),
            Expanded(child: Placeholder(), flex: 22,),
            Expanded(child: Row(
              children: [
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
              ],
            ),flex: 2,),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
