import 'package:flutter/material.dart';

class ComicHomePage extends StatefulWidget {
  ComicHomePage({Key? key}) : super(key: key);

  @override
  _ComicHomePageState createState() => _ComicHomePageState();
}

class _ComicHomePageState extends State<ComicHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
              height: 340,
            ))
          ],
        ),
      ),
    );
  }
}