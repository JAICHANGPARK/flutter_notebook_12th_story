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
              Expanded(flex: 3, child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Placeholder()),
                  Expanded(
                     flex: 2,
                      child: Placeholder()),
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
