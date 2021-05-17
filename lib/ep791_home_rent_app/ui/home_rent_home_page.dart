import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeRentHomePage extends StatefulWidget {
  const HomeRentHomePage({Key? key}) : super(key: key);

  @override
  _HomeRentHomePageState createState() => _HomeRentHomePageState();
}

class _HomeRentHomePageState extends State<HomeRentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafcff),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(Icons.keyboard_arrow_down, color: Colors.greenAccent,),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text("Bali,"),
                              Text("Indonesia"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Badge(
                        child: Icon(Icons.notifications),
                        badgeColor: Colors.teal,
                        ignorePointer: true,
                      ),
                    )
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search House",
                              icon: Icon(Icons.search),
                            ),
                          ),
                          flex: 10),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.tune,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: PhysicalModel(
                  color: Colors.black.withOpacity(0.2),
                  elevation: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ),
              flex: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(28)),
                ),
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
