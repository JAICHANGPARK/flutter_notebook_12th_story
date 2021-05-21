import 'package:flutter/material.dart';
import 'package:flutter_notebook_12th_story/ep796_travel_app/ui/travel_start_page.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => TravelStartPage(),
      },
    );
  }
}
