import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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

  bool _chartIsYear = false;

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
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 0,
                              top: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.black,
                              )),
                          Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: CircleAvatar(
                                radius: 9,
                                child: Icon(
                                  Icons.check,
                                  size: 12,
                                ),
                                foregroundColor: _cryptoAppGreenColor,
                                backgroundColor: _cryptoAppBlueColor,
                              ))
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "W",
                      style: GoogleFonts.chakraPetch(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "B",
                      style: GoogleFonts.chakraPetch(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        "2",
                        style: GoogleFonts.chakraPetch(fontSize: 12),
                      ),
                    ),
                    Icon(Icons.notifications_none_outlined),
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            "Balance Flow",
                            style: GoogleFonts.chakraPetch(
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _chartIsYear = true;
                              });
                            },
                            child: Text(
                              "This Year",
                              style: GoogleFonts.chakraPetch(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: _chartIsYear ? FontWeight.bold : FontWeight.normal),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _chartIsYear = false;
                              });
                            },
                            child: Text(
                              "This Month",
                              style: GoogleFonts.chakraPetch(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: _chartIsYear ? FontWeight.normal : FontWeight.bold),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Card(
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                            child: BarChart(BarChartData(
                              maxY: 120,
                              minY: 50,
                              alignment: BarChartAlignment.spaceBetween,
                              gridData: FlGridData(
                                  horizontalInterval: 10,
                                  getDrawingHorizontalLine: (v) {
                                    if (v % 10 == 0) {
                                      return FlLine(color: Colors.grey[100]);
                                    } else {
                                      return FlLine(color: Colors.white);
                                    }
                                  }),
                              borderData: FlBorderData(show: false),
                              titlesData: FlTitlesData(
                                  leftTitles: SideTitles(
                                      showTitles: true,
                                      margin: 12,
                                      getTitles: (value) {
                                        if (value % 10 == 0) {
                                          return "${value.toInt()}";
                                        } else {
                                          return "";
                                        }
                                      })),
                              axisTitleData: FlAxisTitleData(
                                  leftTitle: AxisTitle(
                                showTitle: true,
                                margin: 0,
                                reservedSize: 0,
                              )),
                              barGroups: [
                                BarChartGroupData(x: 0, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 75, borderRadius: BorderRadius.zero, width: 7, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 84, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 79, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 1, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 72, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 69, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 87, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 2, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 118, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 95, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 105, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 3, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 118, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 95, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 105, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 4, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 100, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 110, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 90, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 5, barsSpace: 1, barRods: [
                                  BarChartRodData(y: 110, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppBlueColor,
                                  ]),
                                  BarChartRodData(y: 115, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 100, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                                BarChartGroupData(x: 6, barsSpace: 1, barRods: [
                                  BarChartRodData(
                                    y: 101,
                                    width: 7,
                                    borderRadius: BorderRadius.zero,
                                    colors: [
                                      _cryptoAppBlueColor,
                                    ],
                                  ),
                                  BarChartRodData(y: 100, width: 7, borderRadius: BorderRadius.zero, colors: [
                                    _cryptoAppGreenColor,
                                  ]),
                                  BarChartRodData(y: 102, width: 7, borderRadius: BorderRadius.zero),
                                ]),
                              ],
                            )),
                          ),
                        ),
                      ),
                      flex: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.orange,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Buy Bitcoin",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "0.4782",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "BTC",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${DateTime.now()}",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "3,960.93",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "USD",
                                    style: GoogleFonts.chakraPetch(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 3,
                  ),
                ],
              ),
              flex: 14,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: _cryptoAppBlueColor,
                    child: Center(
                      child: Text(
                        "Buy / Sell",
                        style: GoogleFonts.chakraPetch(
                          fontWeight: FontWeight.bold,
                          color: _cryptoAppGreenColor,
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    color: _cryptoAppGreenColor,
                    child: Center(
                      child: Text(
                        "Deposit",
                        style: GoogleFonts.chakraPetch(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedTab,
        selectedLabelStyle: GoogleFonts.chakraPetch(),
        unselectedLabelStyle: GoogleFonts.chakraPetch(),
        onTap: (idx) {
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
