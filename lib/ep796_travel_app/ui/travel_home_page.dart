import 'package:flutter/material.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  num _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi Dreamwalker!"),
                        Text(
                          "Let's plan a journey!",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    FloatingActionButton(
                      heroTag: "top_fab",
                      onPressed: () {},
                      mini: true,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.notifications_none_outlined),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Placeholder(),
              ),
              SizedBox(
                height: 42,
                child: Placeholder(),
              ),
              SizedBox(
                height: 320,
                child: Placeholder(),
              ),
              SizedBox(
                height: 200,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomAppBar(
          elevation: 24,
          color: Colors.white,
          child: Container(
            height: 82,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 0;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        size: 32,
                        color: _tabIndex == 0 ? Colors.blue : Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Discover",
                        style: TextStyle(
                          color: _tabIndex == 0 ? Colors.blue : Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 1;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 32,
                        color: _tabIndex == 1 ? Colors.blue : Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bookings",
                        style: TextStyle(
                          color: _tabIndex == 1 ? Colors.blue : Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 2;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 16,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: _tabIndex == 2 ? Colors.blue : Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
