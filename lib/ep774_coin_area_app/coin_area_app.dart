import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/coin_area_home_page.dart';

class CoinAreaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CoinAreaHomePage(),
    );
  }
}
