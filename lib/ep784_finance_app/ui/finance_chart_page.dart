import 'package:fl_chart/fl_chart.dart';
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
                    Icon(Icons.file_upload_outlined)
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
                  child: Row(
                    children: [
                      Expanded(
                          child: Card(
                        elevation: 8,
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
                                    decoration:
                                        BoxDecoration(color: Colors.blue[200], borderRadius: BorderRadius.circular(4)),
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
                                    child: Text(
                                      "Income",
                                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "\$778.35",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                          child: Card(
                        elevation: 8,
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
                                    decoration:
                                        BoxDecoration(color: Colors.red[200], borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Icon(
                                        Icons.upload,
                                        size: 16,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Outcome",
                                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "\$858.35",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.2,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "Analytic",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                Spacer(),
                                OutlinedButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_downward),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text("weekly")
                                    ],
                                  ),
                                )
                              ],
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: BarChart(
                              BarChartData(
                                barGroups: [
                                  BarChartGroupData(x: 0, barRods: [

                                  ]),
                                ]
                              ),
                            ),
                            flex: 10,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 8,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Income"),
                                SizedBox(
                                  width: 24,
                                ),
                                CircleAvatar(
                                  radius: 8,
                                  backgroundColor: Colors.red,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Outcome"),
                              ],
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lastest Transaction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                          color: Colors.grey,
                        )
                      ],
                    ),
                    Container(
                      height: 240,
                      decoration: BoxDecoration(),
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration:
                                        BoxDecoration(color: Colors.pink, borderRadius: BorderRadius.circular(4)),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Dream",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Apr 20, 19:00 WIB",
                                        style: TextStyle(fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    "- \$948.55",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
