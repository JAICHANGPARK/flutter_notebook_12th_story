import 'package:badges/badges.dart';
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
      body: SafeArea(
        child: Column(
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
              flex: 1,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Center()
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),

              flex: 5,
            ),
            Expanded(
              child: Placeholder(),
              flex: 4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (idx) {
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
