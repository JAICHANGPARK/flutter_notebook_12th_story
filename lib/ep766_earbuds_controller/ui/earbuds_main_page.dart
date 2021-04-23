import 'package:flutter/material.dart';


class EarbudMainPage extends StatefulWidget {
  @override
  _EarbudMainPageState createState() => _EarbudMainPageState();
}

class _EarbudMainPageState extends State<EarbudMainPage> with SingleTickerProviderStateMixin{
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
               Column(
                 children: [
                  Text("WF-XB700",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                   Row(
                     children: [
                       CircleAvatar(radius: 3,backgroundColor: Colors.green,),
                       Text("Connected to Dream's iPhone", style: TextStyle(
                         fontSize: 12,
                         color: Colors.grey
                       ),),
                     ],
                   )
                 ],
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
          ],
        ),
      ),
    );
  }
}
