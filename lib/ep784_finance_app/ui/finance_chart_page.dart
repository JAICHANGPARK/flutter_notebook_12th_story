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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      "History",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.upload_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
