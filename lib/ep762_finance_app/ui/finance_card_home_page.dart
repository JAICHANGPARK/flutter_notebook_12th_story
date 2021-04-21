import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class FinanceCardPage extends StatefulWidget {
  @override
  _FinanceCardPageState createState() => _FinanceCardPageState();
}

class _FinanceCardPageState extends State<FinanceCardPage> {

  int _tabIndex = 0;
  int _chartTabIndex = 0;
  Color _appMainColor =Color(0xff75a29f);
  Color _appAccentColor =Color(0xffb2392e);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _tabIndex = 2;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Services",
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      // Spacer(),
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
              child: Placeholder(),
              flex: 10,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _tabIndex,
        selectedItemColor: _appAccentColor,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
          if(index == 0) Get.back();
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
