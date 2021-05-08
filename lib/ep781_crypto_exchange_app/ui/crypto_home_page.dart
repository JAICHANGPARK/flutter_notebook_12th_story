import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                          child: Center(),
                        ),
                      ),
                      flex: 12),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.orange,
                                  ),
                                  SizedBox(width: 8,),
                                  Text("Buy Bitcoin",style: GoogleFonts.chakraPetch(
                                    fontWeight: FontWeight.bold,
                                  ),),
                                  Spacer(),
                                  Text("0.4782",style: GoogleFonts.chakraPetch(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),),
                                  Text("BTC",style: GoogleFonts.chakraPetch(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    flex: 4,
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
