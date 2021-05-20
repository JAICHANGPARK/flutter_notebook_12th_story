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
                      height: MediaQuery.of(context).size.height / 1.9,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(image: NetworkImage(widget.img), fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Positioned(
                              left: 16,
                              top: 16,
                              right: 16,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      height: 48,
                                      width: 48,
                                      padding: EdgeInsets.all(4),
                                      decoration:
                                          BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.tealAccent,
                                        child: Icon(
                                          Icons.arrow_back_ios_new,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 48,
                                    width: 48,
                                    padding: EdgeInsets.all(4),
                                    decoration:
                                        BoxDecoration(color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.tealAccent,
                                      child: Icon(
                                        Icons.photo_library_outlined,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Positioned(child: Hero(
                            tag: "title",
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Black Modern",
                                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "House",
                                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Broadway Street, New york",
                                  style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),)
                        ],
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
