import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'ui/comic_home_page.dart';

class ComicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: ComicHomePage(),
    );
  }
}
