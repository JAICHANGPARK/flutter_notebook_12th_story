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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416135_960_720.jpg"),
                  fit: BoxFit.cover
                )
              ),
            )),
            Positioned(child: Text("T R A V E L", style: TextStyle(
              fontSize: 24

            ),), left: 24, top: 48,)

          ],
        ),
      ),
    );
  }
}
