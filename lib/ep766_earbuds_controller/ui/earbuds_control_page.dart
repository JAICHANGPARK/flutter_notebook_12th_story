import 'package:flutter/material.dart';

class EarbudsControlPage extends StatefulWidget {
  @override
  _EarbudsControlPageState createState() => _EarbudsControlPageState();
}

class _EarbudsControlPageState extends State<EarbudsControlPage> with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
            TabBar(controller: _tabController, tabs: [
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
