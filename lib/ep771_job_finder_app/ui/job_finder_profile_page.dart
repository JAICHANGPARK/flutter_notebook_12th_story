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
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text("Dream Walker"),
                    ),
                    Text("Android/Flutter Developer")
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
