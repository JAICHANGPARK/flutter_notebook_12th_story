import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ScreenTimeHomePage extends StatefulWidget {
  @override
  _ScreenTimeHomePageState createState() => _ScreenTimeHomePageState();
}

class _ScreenTimeHomePageState extends State<ScreenTimeHomePage> {
  int _bottomIdx = 0;

  //13 148 136
  Color appGreenColor = Color(0xff0D9488);
  Color appDarkGreenColor = Color(0xff134E4A); // 19 78 74

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good afternoon!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: appDarkGreenColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "DECEMBER 13TH",
                            style: TextStyle(
                              color: appGreenColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.teal[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.access_time,
                          color: appGreenColor,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "In the moment",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: appDarkGreenColor, fontSize: 18),
                                    ),
                                    Text(
                                      "5h 33m",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: appGreenColor, fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Dec 7 - Dec 13",
                                      style: TextStyle(color: appDarkGreenColor, fontSize: 16),
                                    ),
                                    Text(
                                      "30h 23m",
                                      style: TextStyle(color: appDarkGreenColor, fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(height: 16),
                        Expanded(
                            flex: 8,
                            child: BarChart(
                              BarChartData(
                                  gridData: FlGridData(
                                      horizontalInterval: 1.0,
                                      show: true,
                                      getDrawingHorizontalLine: (value) {
                                        print(value);
                                        if (value == 3) {
                                          return FlLine(
                                            color: appGreenColor,
                                            dashArray: [6, 10],
                                            strokeWidth: 3,
                                          );
                                        }
                                        if (value % 4 == 0) {
                                          return FlLine(
                                            color: Colors.grey[300],
                                          );
                                        } else {
                                          return FlLine(color: Colors.transparent);
                                        }
                                      }),
                                  alignment: BarChartAlignment.spaceAround,
                                  groupsSpace: 8,
                                  minY: 0,
                                  maxY: 10,
                                  barGroups: [
                                    BarChartGroupData(x: 0, barsSpace: 8, barRods: [
                                      BarChartRodData(
                                        y: 8,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 1, barRods: [
                                      BarChartRodData(
                                        y: 4,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 2, barRods: [
                                      BarChartRodData(
                                        y: 3,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 3, barRods: [
                                      BarChartRodData(
                                        y: 5,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 4, barRods: [
                                      BarChartRodData(
                                        y: 4,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 5, barRods: [
                                      BarChartRodData(
                                        y: 3,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 6, barRods: [
                                      BarChartRodData(
                                        y: 8,
                                        colors: [appDarkGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                  ],
                                  titlesData: FlTitlesData(
                                    show: true,
                                    bottomTitles: SideTitles(
                                        showTitles: true,
                                        getTextStyles: (value) => TextStyle(
                                              color: appGreenColor,
                                            ),
                                        getTitles: (value) {
                                          switch (value.toInt()) {
                                            case 0:
                                              return "M";
                                            case 1:
                                              return "T";
                                            case 2:
                                              return "W";
                                            case 3:
                                              return "T";
                                            case 4:
                                              return "F";
                                            case 5:
                                              return "S";
                                            case 6:
                                              return "S";
                                            default:
                                              return '';
                                          }
                                        }),
                                    leftTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                    rightTitles: SideTitles(
                                        showTitles: true,
                                        margin: 16,
                                        getTextStyles: (value) {
                                          if (value == 3) {
                                            return TextStyle(
                                              color: appDarkGreenColor,
                                            );
                                          }
                                          if (value % 4 == 0) {
                                            return TextStyle(color: appGreenColor, fontWeight: FontWeight.bold);
                                          } else {
                                            return TextStyle();
                                          }
                                        },
                                        getTitles: (value) {
                                          if (value == 3) {
                                            return "avg";
                                          }
                                          if (value % 4 == 0) {
                                            return "${value.toStringAsFixed(0)} h";
                                          } else {
                                            return "";
                                          }
                                        }),
                                  ),
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  backgroundColor: Colors.teal[50]),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Screen time",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: appDarkGreenColor, fontSize: 18),
                                    ),
                                    Text(
                                      "48m",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: appGreenColor, fontSize: 18),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Dec 7 - Dec 13",
                                      style: TextStyle(color: appDarkGreenColor, fontSize: 16),
                                    ),
                                    Text(
                                      "2h 55m",
                                      style: TextStyle(color: appDarkGreenColor, fontSize: 16),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(height: 16),
                        Expanded(
                            flex: 8,
                            child: BarChart(
                              BarChartData(
                                  gridData: FlGridData(
                                      horizontalInterval: 1.0,
                                      show: true,
                                      getDrawingHorizontalLine: (value) {
                                        print(value);
                                        if (value == 24) {
                                          return FlLine(
                                            color: appGreenColor,
                                            dashArray: [6, 10],
                                            strokeWidth: 3,
                                          );
                                        }
                                        if (value % 20 == 0) {
                                          return FlLine(
                                            color: Colors.grey[300],
                                          );
                                        } else {
                                          return FlLine(color: Colors.transparent);
                                        }
                                      }),
                                  alignment: BarChartAlignment.spaceAround,
                                  groupsSpace: 8,
                                  minY: 0,
                                  maxY: 72,
                                  barGroups: [
                                    BarChartGroupData(x: 0, barsSpace: 8, barRods: [
                                      BarChartRodData(
                                        y: 15,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 1, barRods: [
                                      BarChartRodData(
                                        y: 20,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 2, barRods: [
                                      BarChartRodData(
                                        y: 30,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 3, barRods: [
                                      BarChartRodData(
                                        y: 25,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 4, barRods: [
                                      BarChartRodData(
                                        y: 28,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 5, barRods: [
                                      BarChartRodData(
                                        y: 29,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 6, barRods: [
                                      BarChartRodData(
                                        y: 30,
                                        colors: [appDarkGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                  ],
                                  titlesData: FlTitlesData(
                                    show: true,
                                    bottomTitles: SideTitles(
                                        showTitles: true,
                                        getTextStyles: (value) => TextStyle(
                                          color: appGreenColor,
                                        ),
                                        getTitles: (value) {
                                          switch (value.toInt()) {
                                            case 0:
                                              return "M";
                                            case 1:
                                              return "T";
                                            case 2:
                                              return "W";
                                            case 3:
                                              return "T";
                                            case 4:
                                              return "F";
                                            case 5:
                                              return "S";
                                            case 6:
                                              return "S";
                                            default:
                                              return '';
                                          }
                                        }),
                                    leftTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                    rightTitles: SideTitles(
                                      margin: 16,
                                        showTitles: true,
                                        getTextStyles: (value) {
                                          if (value == 24) {
                                            return TextStyle(
                                              color: appDarkGreenColor,
                                            );
                                          }
                                          if (value % 10 == 0) {
                                            return TextStyle(color: appGreenColor, fontWeight: FontWeight.bold);
                                          } else {
                                            return TextStyle();
                                          }
                                        },
                                        getTitles: (value) {
                                          if (value == 24) {
                                            return "avg";
                                          }
                                          if (value % 20 == 0) {
                                            return "${value.toStringAsFixed(0)} m";
                                          } else {
                                            return "";
                                          }
                                        }),
                                  ),
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  backgroundColor: Colors.teal[50]),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Text("MOMENT GUIDE"),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Phone it in today",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: appDarkGreenColor, fontSize: 18),
                                    ),

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Call someone today",
                                      style: TextStyle(color: appDarkGreenColor, fontSize: 16),
                                    ),

                                  ],
                                ),
                              ],
                            )),
                        SizedBox(height: 16),
                        Expanded(
                            flex: 8,
                            child: BarChart(
                              BarChartData(
                                  gridData: FlGridData(
                                      horizontalInterval: 1.0,
                                      show: true,
                                      getDrawingHorizontalLine: (value) {
                                        print(value);
                                        if (value == 24) {
                                          return FlLine(
                                            color: appGreenColor,
                                            dashArray: [6, 10],
                                            strokeWidth: 3,
                                          );
                                        }
                                        if (value % 20 == 0) {
                                          return FlLine(
                                            color: Colors.grey[300],
                                          );
                                        } else {
                                          return FlLine(color: Colors.transparent);
                                        }
                                      }),
                                  alignment: BarChartAlignment.spaceAround,
                                  groupsSpace: 8,
                                  minY: 0,
                                  maxY: 72,
                                  barGroups: [
                                    BarChartGroupData(x: 0, barsSpace: 8, barRods: [
                                      BarChartRodData(
                                        y: 15,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 1, barRods: [
                                      BarChartRodData(
                                        y: 20,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 2, barRods: [
                                      BarChartRodData(
                                        y: 30,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 3, barRods: [
                                      BarChartRodData(
                                        y: 25,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 4, barRods: [
                                      BarChartRodData(
                                        y: 28,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 5, barRods: [
                                      BarChartRodData(
                                        y: 29,
                                        colors: [appGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                    BarChartGroupData(x: 6, barRods: [
                                      BarChartRodData(
                                        y: 30,
                                        colors: [appDarkGreenColor],
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          topRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(0),
                                          bottomRight: Radius.circular(0),
                                        ),
                                      ),
                                    ]),
                                  ],
                                  titlesData: FlTitlesData(
                                    show: true,
                                    bottomTitles: SideTitles(
                                        showTitles: true,
                                        getTextStyles: (value) => TextStyle(
                                          color: appGreenColor,
                                        ),
                                        getTitles: (value) {
                                          switch (value.toInt()) {
                                            case 0:
                                              return "M";
                                            case 1:
                                              return "T";
                                            case 2:
                                              return "W";
                                            case 3:
                                              return "T";
                                            case 4:
                                              return "F";
                                            case 5:
                                              return "S";
                                            case 6:
                                              return "S";
                                            default:
                                              return '';
                                          }
                                        }),
                                    leftTitles: SideTitles(
                                      showTitles: false,
                                    ),
                                    rightTitles: SideTitles(
                                        margin: 16,
                                        showTitles: true,
                                        getTextStyles: (value) {
                                          if (value == 24) {
                                            return TextStyle(
                                              color: appDarkGreenColor,
                                            );
                                          }
                                          if (value % 10 == 0) {
                                            return TextStyle(color: appGreenColor, fontWeight: FontWeight.bold);
                                          } else {
                                            return TextStyle();
                                          }
                                        },
                                        getTitles: (value) {
                                          if (value == 24) {
                                            return "avg";
                                          }
                                          if (value % 20 == 0) {
                                            return "${value.toStringAsFixed(0)} m";
                                          } else {
                                            return "";
                                          }
                                        }),
                                  ),
                                  borderData: FlBorderData(
                                    show: false,
                                  ),
                                  backgroundColor: Colors.teal[50]),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              _bottomIdx = idx;
            });
          },
          currentIndex: _bottomIdx,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Activity"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Family"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Friends"),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: "Coach"),
            BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings"),
          ]),
    );
  }
}
