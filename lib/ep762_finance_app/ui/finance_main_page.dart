import 'package:flutter/material.dart';

class FinanceMainPage extends StatefulWidget {
  @override
  _FinanceMainPageState createState() => _FinanceMainPageState();
}

class _FinanceMainPageState extends State<FinanceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                ],
              )),
          Expanded(
            flex: 10,
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
