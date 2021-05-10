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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Hi Dream"), Text("Welcome Back")],
                        ),
                        Spacer(),
                        CircleAvatar()
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Account Balance",
                              style: TextStyle(),
                            ),
                            Text(
                              "\$1.948.55",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 38,
                          width: 94,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Add Card",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Most Transaction"),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 92,
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text("Shopping")
                                ],
                              )),
                              SizedBox(width: 16),
                              Expanded(child: Placeholder()),
                              SizedBox(width: 16),
                              Expanded(child: Placeholder()),
                              SizedBox(width: 16),
                              Expanded(child: Placeholder()),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
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
