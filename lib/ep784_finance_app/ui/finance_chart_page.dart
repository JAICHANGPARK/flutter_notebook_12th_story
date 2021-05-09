import 'package:flutter/material.dart';

class FinanceChartPage extends StatefulWidget {
  const FinanceChartPage({Key? key}) : super(key: key);

  @override
  _FinanceChartPageState createState() => _FinanceChartPageState();
}

class _FinanceChartPageState extends State<FinanceChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text("History"),
                  Icon(Icons.upload_rounded)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
