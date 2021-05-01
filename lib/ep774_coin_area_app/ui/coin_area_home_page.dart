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
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: Colors.orange,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Bitcoin",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                                    child: Text(
                                                      "1.45903210 BTC",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$ 11300",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Card(
                                            elevation: 0,
                                            margin: EdgeInsets.zero,
                                            color: Colors.white.withOpacity(0.1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: Colors.blue,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Litecoin",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                                    child: Text(
                                                      "1.45903210 LTC",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$ 500",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Card(
                                            elevation: 0,
                                            margin: EdgeInsets.zero,
                                            color: Colors.white.withOpacity(0.1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: Colors.red,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Profect Money",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                                    child: Text(
                                                      "1.45903210 BTC",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$ 97",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                      ],
                                    )),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Card(
                                            elevation: 0,
                                            margin: EdgeInsets.zero,
                                            color: Colors.white.withOpacity(0.1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 12,
                                                        backgroundColor: Colors.teal,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Bitcoin Cash",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                                    child: Text(
                                                      "5.45903210 BTC",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  Text(
                                                    "\$ 4700",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 8),
                                              child: Card(
                                                elevation: 0,
                                                margin: EdgeInsets.zero,
                                                color: Colors.white.withOpacity(0.1),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 12,
                                                            backgroundColor: Colors.blueGrey,
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                            "Ether",
                                                            style: TextStyle(
                                                              color: Colors.grey,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 8),
                                                        child: Text(
                                                          "1.45903210 ETH",
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                      ),
                                                      Text(
                                                        "\$ 803",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      MaterialButton(
                                                        onPressed: () {},
                                                        minWidth: double.infinity,
                                                        color: Colors.greenAccent,
                                                        child: Text(
                                                          "DEPOSIT",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                      MaterialButton(
                                                        onPressed: () {},
                                                        minWidth: double.infinity,
                                                        color: Colors.blueGrey,
                                                        child: Text(
                                                          "WITHDRAW",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                              child: Text(
                                "Statistic",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(itemBuilder: (context, index) {
                                return Container(
                                  height: 120,
                                  decoration: BoxDecoration(),
                                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                                  child: Column(
                                    children: [
                                      Expanded(child: Row(
                                        children: [
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("CRYPTO COIN", style: TextStyle(
                                                  fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              ),),
                                              Row(
                                                children: [
                                                  CircleAvatar(backgroundColor: Colors.deepOrangeAccent,
                                                  radius: 10,),
                                                  SizedBox(width: 8,),
                                                  Text("BTC", style: TextStyle(
                                                    fontSize: 16,  color: Colors.white,
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          )),
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("EARNED TOTAL", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                              Text("1.45903210", style: TextStyle(
                                                fontSize: 16,  color: Colors.white,
                                              ),),
                                            ],
                                          )),
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("PENDING WITHDRAW", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                              Text("0", style: TextStyle(
                                                fontSize: 16,  color: Colors.white,
                                              ),),
                                            ],
                                          )),
                                        ],
                                      )),
                                      Expanded(child: Row(
                                        children: [
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("EARNED TOTAL", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                              Text("1.45903210", style: TextStyle(
                                                fontSize: 16,  color: Colors.white,
                                              ),),
                                            ],
                                          )),
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("EARNED TOTAL", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                              Text("1.45903210", style: TextStyle(
                                                fontSize: 16,  color: Colors.white,
                                              ),),
                                            ],
                                          )),
                                          Expanded(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("EARNED TOTAL", style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),),
                                              Text("1.45903210", style: TextStyle(
                                                fontSize: 16,  color: Colors.white,
                                              ),),
                                            ],
                                          )),
                                        ],
                                      )),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
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
