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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [Column(
                  children: [
                    Row(
                      children: [
                        Text("Location"),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_location),
                      ],
                    ),

                  ],
                )],
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 10,
            ),
            Expanded(
              child: Container(

              ),
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
