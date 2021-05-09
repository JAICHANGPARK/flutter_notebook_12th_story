import 'package:flutter/material.dart';


class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({Key? key}) : super(key: key);

  @override
  _FinanceHomePageState createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends State<FinanceHomePage> {
  int _bottomTabIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        currentIndex: _bottomTabIdx,
        onTap: (idx){
          setState(() {
            _bottomTabIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

        ],
      ),
    );
  }
}
