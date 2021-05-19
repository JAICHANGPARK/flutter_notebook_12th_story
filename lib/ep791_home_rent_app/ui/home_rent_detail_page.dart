import 'package:flutter/material.dart';

class HomeRentDetailPage extends StatefulWidget {
  final String img;
  HomeRentDetailPage({Key? key, required this.img}) : super(key: key);

  @override
  _HomeRentDetailPageState createState() => _HomeRentDetailPageState();
}

class _HomeRentDetailPageState extends State<HomeRentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Hero(
                  tag: "img",
                  child: Material(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: buildBottomAppBarWidget(),
    );
  }

  Widget buildBottomAppBarWidget() {
    return BottomAppBar(
      child: Container(
        height: 84,
        padding: EdgeInsets.all(16),
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
                SizedBox(
                  height: 8,
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
            ),
            Spacer(),
            Container(
              height: 64,
              width: 120,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text(
                  "Rent Now",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
