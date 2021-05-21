import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelStartPage extends StatefulWidget {
  const TravelStartPage({Key? key}) : super(key: key);

  @override
  _TravelStartPageState createState() => _TravelStartPageState();
}

class _TravelStartPageState extends State<TravelStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416135_960_720.jpg"),
                      fit: BoxFit.cover)),
            )),
            Positioned(
              child: Text(
                "T R A V E L",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              left: 24,
              top: 48,
            ),
            Positioned(
              child: Container(
                height: 200,
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(24))),
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 16, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Make some memories",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "🦜 Relax and make the booking process as easy aspossible!",
                    ),
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            )
          ],
        ),
      ),
    );
  }
}
