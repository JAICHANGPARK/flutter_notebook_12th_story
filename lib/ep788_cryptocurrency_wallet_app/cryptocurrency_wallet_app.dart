import 'package:flutter/material.dart';

import 'ui/cryptocurrency_wallet_home_page.dart';

class CryptocurrencyWalletApp extends StatelessWidget {
  const CryptocurrencyWalletApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CryptocurrencyWalletHomePage(),
    );
  }
}
