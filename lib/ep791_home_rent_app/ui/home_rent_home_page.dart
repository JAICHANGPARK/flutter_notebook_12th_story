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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Location"),
                            Icon(Icons.keyboard_arrow_down),
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
                    Spacer(),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 10,
            ),
            Expanded(
              child: Container(),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
