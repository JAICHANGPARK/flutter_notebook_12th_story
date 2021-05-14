import 'dart:math';

import 'package:badges/badges.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:chart_sparkline/flutter_sparkline.dart';
import 'package:flutter/material.dart';

class CryptocurrencyWalletHomePage extends StatefulWidget {
  const CryptocurrencyWalletHomePage({Key? key}) : super(key: key);

  @override
  _CryptocurrencyWalletHomePageState createState() => _CryptocurrencyWalletHomePageState();
}

class _CryptocurrencyWalletHomePageState extends State<CryptocurrencyWalletHomePage>
    with SingleTickerProviderStateMixin {
  int _bottomIndex = 0;
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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Portfolio balance",
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$1,481.05",
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "+2.15%",
                                  style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 24,),
                            SizedBox(
                                height: 200,
                                child: Sparkline(
                                  data: List.generate(50, (index) => Random().nextDouble() * 100.0 + 10),
                                  lineWidth: 2.5,
                                  fillMode: FillMode.below,
                                  fillGradient:
                                      LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                                    Colors.blue,
                                    Colors.blue[400]!,
                                    Colors.white,
                                  ]),
                                )),
                            SizedBox(height: 8,),
                            SizedBox(
                              height: 24,
                              child: TabBar(
                                indicatorWeight: 0,
                                tabs: [
                                  Tab(
                                    text: "1H",
                                  ),
                                  Tab(
                                    text: "1D",
                                  ),
                                  Tab(
                                    text: "1W",
                                  ),
                                  Tab(
                                    text: "1M",
                                  ),
                                  Tab(
                                    text: "1Y",
                                  ),
                                  Tab(
                                    text: "All",
                                  )
                                ],
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.grey,
                                indicator: BubbleTabIndicator(
                                  indicatorHeight: 24.0,
                                  indicatorColor: Colors.blueAccent,
                                  tabBarIndicatorSize: TabBarIndicatorSize.tab,

                                  // Other flags
                                  // indicatorRadius: 1,
                                  insets: EdgeInsets.all(1),
                                  padding: EdgeInsets.all(10)
                                ),
                                controller: _tabController,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!), borderRadius: BorderRadius.circular(8)),
                ),
              ),
              flex: 5,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text("Top movers"),
                        Spacer(),
                        TextButton(onPressed: () {}, child: Text("View all")),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 160,
                            );
                          }))
                ],
              ),
              flex: 3,
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
