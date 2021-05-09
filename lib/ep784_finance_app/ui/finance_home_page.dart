import 'package:flutter/material.dart';
import 'package:flutter_notebook_12th_story/ep784_finance_app/ui/finance_chart_page.dart';

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({Key? key}) : super(key: key);

  @override
  _FinanceHomePageState createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends State<FinanceHomePage> {
  int _bottomTabIdx = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _bottomTabIdx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [Text("Page 1")],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [Text("Page 2")],
              ),
            ),
          ),
          FinanceChartPage(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [Text("Page 4")],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        currentIndex: _bottomTabIdx,
        onTap: (idx) {
          setState(() {
            _bottomTabIdx = idx;
            _pageController.jumpToPage(_bottomTabIdx);
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
        ],
      ),
    );
  }
}
