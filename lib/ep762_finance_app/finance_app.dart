import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/finance_main_page.dart';

class FinanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        "/" : (context) => FinanceMainPage()
      },
    );
  }
}
