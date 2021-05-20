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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                gradient:
                                    LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [
                                  Colors.black.withOpacity(0.5),
                                  Colors.black.withOpacity(0.2),
                                  Colors.black.withOpacity(0.1),
                                  Colors.transparent,
                                ]),
                              ),
                            ),
                            bottom: 0,
                            left: 0,
                            right: 0,
                            top: 0,
                          ),
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
                          Positioned(
                            right: 16,
                            bottom: 16,
                            left: 16,
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
                          ),
                          Positioned(
                              right: 16,
                              bottom: 16,
                              child: Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(8)),
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923__340.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 58,
                                      width: 58,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(8)),
                                      padding: EdgeInsets.all(5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2017/01/12/17/30/warm-and-cozy-1975215__340.jpg"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(8)),
                                    padding: EdgeInsets.all(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265__340.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                    )
                  ],
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
