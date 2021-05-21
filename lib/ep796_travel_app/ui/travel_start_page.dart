import 'package:flutter/material.dart';


class TravelStartPage extends StatefulWidget {
  const TravelStartPage({Key? key}) : super(key: key);

  @override
  _TravelStartPageState createState() => _TravelStartPageState();
}

class _TravelStartPageState extends State<TravelStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416135_960_720.jpg"),
                fit: BoxFit.cover
              )
            ),
          ))
        ],
      ),
    );
  }
}
