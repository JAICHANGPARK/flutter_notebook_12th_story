import 'package:flutter/material.dart';

class EarbudMainPage extends StatefulWidget {
  @override
  _EarbudMainPageState createState() => _EarbudMainPageState();
}

class _EarbudMainPageState extends State<EarbudMainPage> with SingleTickerProviderStateMixin {
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
                    Text(
                      "WF-XB700",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Connected to Dream's iPhone",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
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
            SizedBox(
              height: 280,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Expanded(flex: 8, child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://www.sony.com/image/c1e5ae984af56da2c4e805ade887eb00?fmt=png-alpha&wid=900&hei=800"),
                            fit: BoxFit.cover
                          )
                        ),
                      )),
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 8,
                                    child: Text(
                                      "L",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.white.withOpacity(0.4),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "72%",
                                    style: TextStyle(color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "CASE",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "72%",
                                      style: TextStyle(color: Colors.white, fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 8,
                                    child: Text(
                                      "R",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "80%",
                                    style: TextStyle(color: Colors.white, fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ),
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
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  Placeholder()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
