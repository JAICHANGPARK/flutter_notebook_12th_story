import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinAreaHomePage extends StatefulWidget {
  @override
  _CoinAreaHomeAppState createState() => _CoinAreaHomeAppState();
}

class _CoinAreaHomeAppState extends State<CoinAreaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202529),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.greenAccent,
                      ),
                      Spacer(),
                      Text(
                        "COIN",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "AREA",
                        style: TextStyle(color: Colors.greenAccent, fontSize: 18),
                      ),
                      Spacer(),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(
                flex: 20,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 78,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your active deposit:",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$ 17,300.00",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 340,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balances",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8),
                                              child: Card(
                                          elevation: 0,
                                          margin: EdgeInsets.zero,
                                          color: Colors.white.withOpacity(0.1),

                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 12,
                                                    ),
                                                    Text(
                                                      "Bitcoin",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Text("1.45903210 BTC", style: TextStyle(
                                                  color: Colors.white
                                                ),),
                                                Text("\$ 11300", style: TextStyle(
                                                  color: Colors.grey
                                                ),),
                                              ],
                                          ),
                                        ),
                                            )),
                                        Expanded(child: Placeholder()),
                                        Expanded(child: Placeholder())
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Expanded(flex: 1, child: Placeholder()),
                                        Expanded(flex: 2, child: Placeholder()),
                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 360,
                        child: Placeholder(),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
