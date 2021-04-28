import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:percent_indicator/percent_indicator.dart';

class JobFinderProfilePage extends StatefulWidget {
  @override
  _JobFinderProfilePageState createState() => _JobFinderProfilePageState();
}

class _JobFinderProfilePageState extends State<JobFinderProfilePage> {
  int _toggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(LineIcons.arrowLeft)),
                    Text(
                      "PROFILE",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(LineIcons.cog)),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 82,
                      width: 82,
                      decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(8)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Dream Walker",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Text(
                      "Android/Flutter Developer",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: SizedBox(
                  height: 48,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        Expanded(
                            child: _toggleIndex == 0
                                ? Container(
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Details",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        _toggleIndex = 0;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        "Details",
                                        style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                                      ),
                                    ),
                                  )),
                        Expanded(
                            child: _toggleIndex == 1
                                ? Container(
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Skills",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        _toggleIndex = 1;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        "Skills",
                                        style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                                      ),
                                    ),
                                  )),
                        Expanded(
                            child: _toggleIndex == 2
                                ? Container(
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Activities",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        _toggleIndex = 2;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                        "Activities",
                                        style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                                      ),
                                    ),
                                  )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 142,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularPercentIndicator(
                            radius: 72.0,
                            lineWidth: 8.0,
                            percent: 0.85,
                            center: Text(
                              "4.9",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            progressColor: Colors.pink,
                          ),
                          Text(
                            "Ux Design",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "100 Review",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularPercentIndicator(
                            radius: 72.0,
                            lineWidth: 8.0,
                            percent: 0.8,
                            center: Text(
                              "4.8",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            progressColor: Colors.orange,
                          ),
                          Text(
                            "Research",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "50 Review",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularPercentIndicator(
                            radius: 72.0,
                            lineWidth: 8.0,
                            percent: 0.7,
                            center: Text(
                              "4.0",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            progressColor: Colors.teal,
                          ),
                          Text(
                            "Ux Design",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "100 Review",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: Center(
                  child: Container(
                    height: 42,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Text(
                        "See more",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Review",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200]!),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "/ 5",
                                          style: TextStyle(color: Colors.grey, fontSize: 16),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: List.generate(
                                            5,
                                            (index) => Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 14,
                                                )),
                                      ),
                                    ),
                                    Text(
                                      "256 Review",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(flex: 6, child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(5, (index) => Row(children: [
                                Text("${5- index}"),
                                Icon( Icons.star,
                                  color: Colors.orange,
                                  size: 14,),
                                Expanded(
                                  child: Container(height: 8,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                  ),
                                )
                              ],)),
                            )),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
