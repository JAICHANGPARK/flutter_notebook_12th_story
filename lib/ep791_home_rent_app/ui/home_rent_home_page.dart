import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeRentHomePage extends StatefulWidget {
  const HomeRentHomePage({Key? key}) : super(key: key);

  @override
  _HomeRentHomePageState createState() => _HomeRentHomePageState();
}

class _HomeRentHomePageState extends State<HomeRentHomePage> {
  int _bottomIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.greenAccent,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 18,
                                color: Colors.greenAccent,
                              ),
                              Text(
                                "Bali,",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                " Indonesia",
                                style: TextStyle(fontSize: 18),
                              ),
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
                  borderRadius: BorderRadius.circular(24),
                  elevation: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.2),
                      ]),
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                          image:
                              NetworkImage("https://cdn.pixabay.com/photo/2014/11/21/17/17/house-540796_960_720.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            borderRadius: BorderRadius.circular(24),
                            decoration: BoxDecoration(
                              gradient:
                                  LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.1),
                                Colors.transparent,
                              ]),
                            ),
                          ),
                          bottom: 0,
                          left: 0,
                          right: 0,
                          top: 0,
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.7), borderRadius: BorderRadius.circular(24)),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  "📍",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "Maps",
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          right: 16,
                          top: 16,
                        ),
                        Positioned(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Black Modern",
                                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "House",
                                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    "Broadway Street, New york",
                                    style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 52,
                                width: 52,
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blueGrey,
                                  child: Icon(Icons.favorite_border),
                                ),
                              )
                            ],
                          ),
                          right: 16,
                          bottom: 16,
                          left: 16,
                        ),
                      ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _bottomIdx = 0;
                          });
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: _bottomIdx == 0 ? Colors.white.withOpacity(0.2) : Colors.black,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.home_sharp,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _bottomIdx = 1;
                          });
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: _bottomIdx == 1 ? Colors.white.withOpacity(0.2) : Colors.black,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.favorite_border,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _bottomIdx = 2;
                          });
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: _bottomIdx == 2 ? Colors.white.withOpacity(0.2) : Colors.black,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _bottomIdx = 3;
                          });
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                              color: _bottomIdx == 3 ? Colors.white.withOpacity(0.2) : Colors.black,
                              borderRadius: BorderRadius.circular(16)),
                          child: Icon(
                            Icons.perm_identity,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
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
