
import 'package:flutter/material.dart';


class TravelHomePage extends StatefulWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),

      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 82,
          child: Row(
            children: [

            ],
          ),
        ),
      ),
    ),
    );
  }
}
