import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/screen_time_home_page.dart';


class ScreenTimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) =>ScreenTimeHomePage()
      },
    );
  }
}
