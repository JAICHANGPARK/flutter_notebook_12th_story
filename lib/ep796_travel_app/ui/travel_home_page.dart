
import 'package:flutter/material.dart';


class TravelHomePage extends StatefulWidget {
  const TravelHomePage({Key? key}) : super(key: key);

  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  num _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(24),
        topLeft: Radius.circular(24),
      ),

      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 82,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    _tabIndex = 0;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.search, size: 32, color: _tabIndex == 0 ? Colors.blue : Colors.black,),
                  SizedBox(height: 8,),
                  Text("Discover",style: TextStyle(
                    color: _tabIndex == 0 ? Colors.blue : Colors.black,
                  ),)
                ],),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _tabIndex = 1;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_bag_outlined, size: 32,color: _tabIndex == 1 ? Colors.blue : Colors.black,),
                    SizedBox(height: 8,),
                    Text("Bookings",style: TextStyle(
                      color: _tabIndex == 1 ? Colors.blue : Colors.black,
                    ),)
                  ],),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _tabIndex = 2;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    SizedBox(height: 8,),
                    Text("Profile",style: TextStyle(
                      color: _tabIndex == 2 ? Colors.blue : Colors.black,
                    ),)
                  ],),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
