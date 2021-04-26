import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class JobFinderProfilePage extends StatefulWidget {
  @override
  _JobFinderProfilePageState createState() => _JobFinderProfilePageState();
}

class _JobFinderProfilePageState extends State<JobFinderProfilePage> {
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
                            child: Center(
                          child: Text(
                            "Details",
                            style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                          ),
                        )),
                        Expanded(
                            child: Center(
                          child: Text(
                            "Skills",
                            style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                          ),
                        )),
                        Expanded(
                            child: Center(
                          child: Text(
                            "Activities",
                            style: TextStyle(color: Colors.blueGrey[400], fontSize: 16),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                child: Placeholder(),
              ),
              SizedBox(
                height: 52,
                child: Placeholder(),
              ),
              SizedBox(height: 24,),
              SizedBox(
                height: 160,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
