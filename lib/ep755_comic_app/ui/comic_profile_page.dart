import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicProfilePage extends StatefulWidget {
  ComicProfilePage({Key? key}) : super(key: key);

  @override
  _ComicProfilePageState createState() => _ComicProfilePageState();
}

class _ComicProfilePageState extends State<ComicProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.arrow_back)),
                  Text("Detail Author"),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 2)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Dreamwalker",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "4.4/5",
                                          style: TextStyle(fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              style: TextStyle(fontSize: 12),
                            ),
                          )),
                    ],
                  )),
              Divider(
                thickness: 2,
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '10',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Book",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '239',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Followers",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                            decoration: ShapeDecoration(
                                gradient: LinearGradient(colors: [
                                  Colors.deepOrange,
                                  Colors.red,
                                ]),
                                shape: StadiumBorder()),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          )),
                    ],
                  )),
              Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Comic",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        ],
                      ),
                      Expanded(
                        child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            childAspectRatio: 0.7,
                            children: List.generate(
                                5,
                                (index) => Container(
                                      color: Colors.red,
                                      child: Column(
                                        children: [
                                          Expanded(flex: 8, child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(16)
                                            ),
                                          )),
                                          SizedBox(height: 8,),
                                          Expanded(
                                            child: Placeholder(),
                                            flex: 2,
                                          ),
                                        ],
                                      ),
                                    )).toList()),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
