
import 'package:flutter/material.dart';

class CryptocurrencyWalletHomePage extends StatefulWidget {
  const CryptocurrencyWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptocurrencyWalletHomePageState createState() => _CryptocurrencyWalletHomePageState();
}

class _CryptocurrencyWalletHomePageState extends State<CryptocurrencyWalletHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "Portfolio"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "News"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
