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
                              Column(
                                children: [
                                  Text("Dreamwalker"),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.4/5")
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                      Expanded(flex: 2, child: Placeholder()),
                    ],
                  )),
              Divider(
                thickness: 2,
              ),
              Expanded(flex: 2, child: Placeholder()),
              Expanded(flex: 10, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
