import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xlive_switch/xlive_switch.dart';

class EarbudsControlPage extends StatefulWidget {
  @override
  _EarbudsControlPageState createState() => _EarbudsControlPageState();
}

class _EarbudsControlPageState extends State<EarbudsControlPage> with SingleTickerProviderStateMixin {
  bool _value = true;
  PageController _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _changeValue(bool value) {
    print(">>> $value");
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.power_settings_new),
                  color: Colors.white,
                ),
                Container(
                  height: 42,
                  width: 72,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.freepnglogos.com/uploads/airpods-png/airpods-apple-news-articles-stories-trends-for-today-14.png"),
                      )),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
              child: Center(
                child: TabBar(
                    controller: _tabController,
                    isScrollable: false,
                    indicatorColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Status",
                      ),
                      Tab(
                        text: "Sound",
                      ),
                      Tab(
                        text: "System",
                      )
                    ]),
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: _tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Text(
                                "Automatic In-Ear Detection",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              XlivSwitch(
                                value: _value,
                                onChanged: _changeValue,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                        child: Text(
                          "Automatically transfer the audio route from connected devices to earbuds when"
                          "it is placed in your ear",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Touch Sensor Function",
                              style: TextStyle(color: Colors.white, fontWeight:  FontWeight.w600, fontSize: 20),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 200,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.15),
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: CircleAvatar(
                                                radius: 10,
                                                child: Text(
                                                  "L",
                                                ),
                                                foregroundColor: Colors.white,
                                                backgroundColor: Colors.white.withOpacity(0.4),
                                              ),
                                              left: 12,
                                              top: 12,
                                            ),
                                            Positioned(
                                              child:IconButton(
                                                icon: Icon(Icons.info_outline), onPressed: () {  },
                                                color: Colors.white.withOpacity(0.7),
                                              ),
                                              top: 0,
                                              right: 0,
                                            ),
                                            Positioned(child: Center(child: Text("Activate Assistant",

                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white
                                            ),
                                            )),
                                            bottom: 12,
                                              left: 0,
                                              right: 0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.15),
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: CircleAvatar(
                                                radius: 10,
                                                child: Text(
                                                  "R",
                                                ),
                                                foregroundColor: Colors.white,
                                                backgroundColor: Colors.red,
                                              ),
                                              left: 12,
                                              top: 12,
                                            ),
                                            Positioned(
                                              child:IconButton(
                                                icon: Icon(Icons.info_outline), onPressed: () {  },
                                                color: Colors.white.withOpacity(0.7),
                                              ),
                                              top: 0,
                                              right: 0,
                                            ),
                                            Positioned(child: Center(child: Text("Play Next Song",

                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white
                                              ),
                                            )),
                                              bottom: 12,
                                              left: 0,
                                              right: 0,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Default Environment Sound",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),),
                            SizedBox(
                              height: 48,
                              child: Container(
                                color: Colors.red,
                                child: Row(
                                  children: [

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
