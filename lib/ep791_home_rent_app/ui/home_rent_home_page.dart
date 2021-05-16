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
      body: Column(
        children: [
          Expanded(child: Placeholder(),flex: 2,),
          Expanded(child: Placeholder(), flex: 2,),
          Expanded(child: Placeholder(), flex: 6,),
          Expanded(child: Placeholder(), flex: 3,),
        ],
      ),
    );
  }
}
