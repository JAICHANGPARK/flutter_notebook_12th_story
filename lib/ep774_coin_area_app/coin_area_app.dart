import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/coin_area_home_page.dart';

class CoinAreaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light().copyWith(
        backgroundColor: Color(0xff202529),
        scaffoldBackgroundColor: Color(0xff202529),
      ),
      home: CoinAreaHomePage(),
    );
  }
}
