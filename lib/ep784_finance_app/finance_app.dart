import 'package:flutter/material.dart';

import 'ui/finance_home_page.dart';

class FinanceApp extends StatelessWidget {
  const FinanceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FinanceHomePage(),
    );
  }
}
