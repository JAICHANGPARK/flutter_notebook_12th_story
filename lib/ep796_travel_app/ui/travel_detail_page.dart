import 'package:flutter/material.dart';


class TravelDetailPage extends StatefulWidget {
  const TravelDetailPage({Key? key}) : super(key: key);

  @override
  _TravelDetailPageState createState() => _TravelDetailPageState();
}

class _TravelDetailPageState extends State<TravelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [

            ],
          ),

        ),
      ),
    );
  }
}
