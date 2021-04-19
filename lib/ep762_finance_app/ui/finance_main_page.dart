import 'dart:math';

import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  int _tabIndex = 0;
  int _chartTabIndex = 0;
  final fromDate = DateTime(2021, 04, 01);
  final toDate = DateTime.now();

  late PageController _pageController;

  final date1 = DateTime.now().subtract(Duration(days: 3));
  List<DataPoint<DateTime>> vList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
    for (int i = 0; i < 8; i++) {
      vList.add(DataPoint<DateTime>(
          value: Random().nextInt(10).toDouble() * 10, xAxis: DateTime.now().subtract(Duration(days: i))));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 8,
                        ),
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
                    height: MediaQuery.of(context).size.height / 3.3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(8)),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 16,
                                top: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Savings",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
                                    ),
                                    Text(
                                      "\$5200.00",
                                      style: TextStyle(fontSize: 16, color: Colors.grey[400]!),
                                    ),
                                  ],
                                )),
                            Positioned(
                                top: 16,
                                right: 16,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _chartTabIndex = 0;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        decoration: _chartTabIndex == 0
                                            ? BoxDecoration(
                                                color: Colors.white.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(16))
                                            : null,
                                        child: Center(
                                          child: Text(
                                            "Chart",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _chartTabIndex = 1;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        decoration: _chartTabIndex == 1
                                            ? BoxDecoration(
                                                color: Colors.white.withOpacity(0.4),
                                                borderRadius: BorderRadius.circular(16))
                                            : null,
                                        child: Center(
                                          child: Text(
                                            "Table",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            Positioned(
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: BezierChart(
                                  fromDate: fromDate,
                                  toDate: toDate,
                                  selectedDate: toDate,
                                  // bezierChartS
                                  // cale: BezierChartScale.CUSTOM,
                                  //   xAxisCustomValues: const [0, 5, 10, 15, 20, 25, 30, 35],
                                  series: [
                                    BezierLine(data: vList),
                                  ],
                                  config: BezierChartConfig(
                                      snap: false, backgroundColor: Colors.teal, showDataPoints: false),
                                  bezierChartScale: BezierChartScale.WEEKLY,
                                ),
                              ),
                              left: 16,
                              right: 16,
                              top: 72,
                              bottom: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 58,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blueGrey[100],
                            ),
                            child: Center(
                              child: Icon(Icons.bar_chart,  color: Colors.grey,),
                            ),
                          ),
                          SmoothPageIndicator(
                              effect: ScrollingDotsEffect(
                                dotColor: Colors.grey,
                                activeDotColor: Colors.teal
                              ),
                              controller: _pageController, count: 3),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blueGrey[100],
                            ),
                            child: Center(
                              child: Icon(Icons.picture_in_picture_outlined,
                              color: Colors.grey,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 84,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total balance", style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w600,
                          color: Colors.grey
                        ),),
                        Text("\$5,733.00", style: GoogleFonts.montserrat(
                            fontSize: 32, fontWeight: FontWeight.normal
                        ),)
                      ],
                    ),
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
        currentIndex: _tabIndex,
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
