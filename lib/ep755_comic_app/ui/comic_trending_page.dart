import 'package:flutter/material.dart';


class ComicTrendingPage extends StatefulWidget {
  @override
  _ComicTrendingPageState createState() => _ComicTrendingPageState();
}

class _ComicTrendingPageState extends State<ComicTrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 52,
                        width: 52,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: InkWell(
                                onTap: () {
                                },
                                child: Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      border: Border.all(color: Colors.white, width: 2),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 10,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 0, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Good Afternoon",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Mira Suxi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.apps,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 8,
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(36)),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container()
                  ),
                )),
            Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Trending Comic"),
                          IconButton(onPressed: () {

                          }, icon: Icon(Icons.more_horiz))
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 4),
                          child: ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Container(
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.circular(8),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2021/02/20/03/01/animals-6032121_960_720.jpg"),
                                                  fit: BoxFit.cover,
                                                )),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Text(
                                          "Flutter Book",
                                          style: TextStyle(fontSize: 13, color: Colors.grey),
                                        ),
                                      ),
                                      Text(
                                        "by Dream",
                                        style: TextStyle(fontSize: 12, color: Colors.grey[600]!),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
