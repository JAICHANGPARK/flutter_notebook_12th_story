import 'package:flutter/material.dart';

import 'ui/crypto_home_page.dart';

class CryptoExchangeApp extends StatelessWidget {
  const CryptoExchangeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CryptoExchangeHomePage(),
    );
  }
}
