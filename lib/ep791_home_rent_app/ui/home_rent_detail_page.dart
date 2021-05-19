import 'package:flutter/material.dart';

class HomeRentDetailPage extends StatefulWidget {
  HomeRentDetailPage({Key? key}) : super(key: key);

  @override
  _HomeRentDetailPageState createState() => _HomeRentDetailPageState();
}

class _HomeRentDetailPageState extends State<HomeRentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "\$820",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(
                        text: "/Month",
                        style: TextStyle(
                          fontSize: 12,
                        )),
                  ]))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
