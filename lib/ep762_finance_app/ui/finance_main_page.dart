import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(LineIcons.bars),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                    ),
                    Text(
                      "Services",
                      style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(
                          children: [
                            Center(child: Icon(Icons.notifications_none)),
                            Positioned(
                                right: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 4,
                                ))
                          ],
                        ))
                  ],
                ),
              )),
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3.8,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 58,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 84,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: 100,
                    child: Placeholder(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height /2,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
