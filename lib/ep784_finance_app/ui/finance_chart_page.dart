import 'package:flutter/cupertino.dart';
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      borderRadius: BorderRadius.circular(4)
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.downloading,
                                        size: 16,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Income", style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),),
                                  )
                                ],
                              ),

                              Text("\$778.35",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                            color: Colors.blue[200],
                                            borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.downloading,
                                            size: 16,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Income", style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),),
                                      )
                                    ],
                                  ),

                                  Text("\$778.35",style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
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
