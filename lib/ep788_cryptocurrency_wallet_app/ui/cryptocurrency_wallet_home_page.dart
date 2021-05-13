
import 'package:flutter/material.dart';

class CryptocurrencyWalletHomePage extends StatefulWidget {
  const CryptocurrencyWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptocurrencyWalletHomePageState createState() => _CryptocurrencyWalletHomePageState();
}

class _CryptocurrencyWalletHomePageState extends State<CryptocurrencyWalletHomePage> {

  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder(), flex: 2,),
          Expanded(child: Placeholder(), flex: 5,),
          Expanded(child: Placeholder(), flex: 4,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (idx){
          setState(() {
            _bottomIndex = idx;
          });
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
