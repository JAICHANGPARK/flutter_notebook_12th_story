import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinAreaDepositPage extends StatefulWidget {
  @override
  _CoinAreaDepositPageState createState() => _CoinAreaDepositPageState();
}

class _CoinAreaDepositPageState extends State<CoinAreaDepositPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "MAKE DEPOSIT",
                            style: TextStyle(letterSpacing: 2, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "Step 1",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 2,
                                  width: 56,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Step 2",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(
                flex: 25,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Deposit replacement",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text("Top-up Amount:",style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  Text("1.23456789",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),),
                                  Spacer(),
                                  Text("BTC"),
                                  Icon(Icons.arrow_drop_down_outlined, color: Colors.white,),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    minWidth: double.infinity,
                    color: Colors.greenAccent,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
