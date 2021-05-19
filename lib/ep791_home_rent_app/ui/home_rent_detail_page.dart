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
            children: [
                Column(
                  children: [
                    Text("Price"),
                    Text.rich(TextSpan(children:
                    [
                      TextSpan(
                        text: "\$820"
                      ),
                      TextSpan(
                          text: "/Month",
                        style: TextStyle(
                          fontSize: 12,
                        )
                      ),
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