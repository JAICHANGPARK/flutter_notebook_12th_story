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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(image: NetworkImage("${widget.imgString}"), fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 12,
                              ),
                            ),
                          ),
                        ),
                        left: 16,
                        top: 16,
                      ),
                    ],
                  ),
                ),
              ),
              flex: 15,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${widget.title}",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "🇬🇷",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Text(
                            "${widget.locationText}",
                            style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "⭐",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "${widget.reviewText}",
                          style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                        " Ut enim ad minim veniam,"
                        " quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                    overflow: TextOverflow.fade,)
                  ],
                ),
              ),
              flex: 7,
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
