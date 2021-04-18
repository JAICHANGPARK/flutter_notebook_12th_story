import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  int _tabIndex = 0;

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

                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(LineIcons.bars),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18,
                          color: Colors.grey),
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "Dream",
                          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Spacer(),
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
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 16,
                                top: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Savings",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22
                                ),),
                                Text("\$5200.00", style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[200]!
                                ),)

                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
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
                    height: MediaQuery.of(context).size.height / 2,
                    child: Placeholder(),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex:_tabIndex ,
        selectedItemColor: Colors.red,

        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(LineIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(LineIcons.barChart), label: ""),
          BottomNavigationBarItem(icon: Icon(LineIcons.creditCard), label: ""),
          BottomNavigationBarItem(icon: Icon(LineIcons.user), label: ""),
        ],
      ),
    );
  }
}
