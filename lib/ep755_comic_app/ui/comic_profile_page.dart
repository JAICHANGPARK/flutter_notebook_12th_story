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
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.back();

                }, icon: Icon(Icons.arrow_back)),
                Text("Detail Author"),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.more_horiz))
              ],
            ),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}