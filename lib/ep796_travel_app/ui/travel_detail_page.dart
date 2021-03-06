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
                            "????????",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
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
                          "???",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "${widget.reviewText}",
                          style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                      "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                      " Ut enim ad minim veniam,"
                      " quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      overflow: TextOverflow.fade,
                    )
                  ],
                ),
              ),
              flex: 7,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Safety",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "WiFi",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Lunch",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Pets",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Spa",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                ],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "\$120.00",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "13.05 - 21.05",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(color: Colors.blue,
                  borderRadius: BorderRadius.circular(24)),

                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: Center(
                    child: Text(
                      "Book Now",
                      style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
