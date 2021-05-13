import 'package:flutter/material.dart';

class CryptocurrencyWalletApp extends StatelessWidget {
  const CryptocurrencyWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,),label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,),label: "Portfolio"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,),label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet,),label: "Wallet"),
        ],
      ),
    );
  }
}
