import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarbudsControlPage extends StatefulWidget {
  @override
  _EarbudsControlPageState createState() => _EarbudsControlPageState();
}

class _EarbudsControlPageState extends State<EarbudsControlPage> with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  late TabController _tabController;
  bool _value = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _changeValue(bool value){
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
                            ],
                          ),
                        ),
                      )
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
