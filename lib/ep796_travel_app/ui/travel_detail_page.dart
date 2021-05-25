import 'package:flutter/material.dart';

class TravelDetailPage extends StatefulWidget {
  final String? imgString;
  final String? title;
  final String? locationText;
  final String? reviewText;

  TravelDetailPage({this.imgString, this.title, this.locationText, this.reviewText});

  @override
  _TravelDetailPageState createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("${widget.imgString}"))),
                child: Stack(
                  children: [
                    Positioned(child: Container(),
                    left: 16,
                    top: 16,),
                  ],
                ),
              ),

              flex: 15,
            ),
            Expanded(
              child: Placeholder(),
              flex: 6,
            ),
            Expanded(
              child: Placeholder(),
              flex: 3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
