import 'package:flutter/material.dart';
import 'package:xlive_switch/xlive_switch.dart';

class EarbudMainPage extends StatefulWidget {
  @override
  _EarbudMainPageState createState() => _EarbudMainPageState();
}

class _EarbudMainPageState extends State<EarbudMainPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _ascValue = false;

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
                      Expanded(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://www.sony.com/image/c1e5ae984af56da2c4e805ade887eb00?fmt=png-alpha&wid=900&hei=800"),
                                    fit: BoxFit.cover)),
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
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.15), borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ambient Sound Control",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                                ),
                                XlivSwitch(
                                    value: _ascValue,
                                    onChanged: (v) {
                                      setState(() {
                                        _ascValue = v;
                                      });
                                    })
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Noise Canceling",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 42,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                        child: Center(
                                          child: Text(
                                            "Level 2",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(
                                          "3",
                                          style:
                                              TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(
                                          "4",
                                          style:
                                              TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                      )),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(color: Colors.grey.withOpacity(0.2)),
                                          color: Colors.white.withOpacity(0.2)),
                                      child: Center(
                                        child: Text(
                                          "AUTO",
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SizedBox(
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(16)),
                            )),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Now Playing", style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white
                                      ),),
                                      Row(
                                        children: [
                                          Container(height: 68,
                                          width: 68,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          ),
                                          Column(
                                            children: [
                                              Text("MUSIC"),
                                              Text("Greetings!"),
                                              Text("Michael Seye")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
