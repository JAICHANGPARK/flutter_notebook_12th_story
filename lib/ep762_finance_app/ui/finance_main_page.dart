import 'dart:math';

import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'finance_card_home_page.dart';

class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  int _tabIndex = 0;
  int _chartTabIndex = 0;

  Color _appMainColor =Color(0xff75a29f);
  Color _appAccentColor =Color(0xffb2392e);

  //117 162 159
  // 75 a2 9f

  // 178 57 46
  // b2 39 2e

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3.3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(color: _appMainColor, borderRadius: BorderRadius.circular(8)),
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
                                      snap: false, backgroundColor: _appMainColor, showDataPoints: false),
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
                              child: Icon(
                                Icons.bar_chart,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SmoothPageIndicator(
                              effect: ScrollingDotsEffect(dotColor: Colors.grey, activeDotColor:_appMainColor),
                              controller: _pageController,
                              count: 3),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blueGrey[100],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.picture_in_picture_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 84,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Total balance",
                            style:
                                GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
                          ),
                          Text(
                            "\$5,733.00",
                            style: GoogleFonts.montserrat(fontSize: 28, fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "TransActions",
                            style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 58,
                                width: 58,
                                child: Stack(
                                  children: [
                                    Positioned(left: 0, top: 0, right: 0, bottom: 0, child: CircleAvatar(backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),)),
                                    Positioned(
                                        right: 10,
                                        bottom: 0,
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white)),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 58,
                                width: 58,
                                child: Stack(
                                  children: [
                                    Positioned(left: 0, top: 0, right: 0, bottom: 0, child: CircleAvatar(
                                      backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),
                                    )),
                                    Positioned(
                                        right: 10,
                                        bottom: 0,
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white)),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 58,
                                width: 58,
                                child: Stack(
                                  children: [
                                    Positioned(left: 0, top: 0, right: 0, bottom: 0, child: CircleAvatar(backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),)),
                                    Positioned(
                                        right: 10,
                                        bottom: 0,
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white)),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 58,
                                width: 58,
                                child: Stack(
                                  children: [
                                    Positioned(left: 0, top: 0, right: 0, bottom: 0, child: CircleAvatar(backgroundImage: NetworkImage("https://thispersondoesnotexist.com/image"),)),
                                    Positioned(
                                        right: 10,
                                        bottom: 0,
                                        child: Container(
                                          height: 12,
                                          width: 12,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white)),
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 58,
                                width: 58,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 0,
                                        top: 0,
                                        right: 0,
                                        bottom: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey[200],
                                          foregroundColor: Colors.grey,
                                          child: Icon(Icons.more_horiz),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TransActions history",
                          style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.builder(
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                            ),
                            child: Row(
                              children: [
                                Container(height: 58,width: 58,
                                  decoration: BoxDecoration(color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Icon(Icons.send, color: _appMainColor,),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("McDonalds", style: TextStyle(
                                        fontSize: 16
                                      ),),
                                      SizedBox(height: 8,),
                                      Text("May 10.40PM", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Text("- \$9.99",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        );
                      },

                    ),
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
        selectedItemColor: _appAccentColor,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
          if(index == 2) Get.to(FinanceCardPage());
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
