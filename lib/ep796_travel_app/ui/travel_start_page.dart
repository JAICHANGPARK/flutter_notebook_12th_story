import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_12th_story/ep796_travel_app/ui/travel_home_page.dart';
import 'package:kenburns/kenburns.dart';

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
            // Positioned(child: KenBurns(
            //   maxScale: 1.5,
            //
            //   child: Image.network("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416135_960_720.jpg",
            // ),), left: 0, right: 0,top: 0, bottom: 0,),
            Positioned(
                child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416135_960_720.jpg"),
                      fit: BoxFit.cover)),
            )),
            Positioned(
              child: Text(
                "T R A V E L",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              left: 24,
              top: 48,
            ),
            Positioned(
              child: Container(
                height: 200,
                decoration:
                    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(24))),
                padding: EdgeInsets.only(left: 24, right: 16, bottom: 16, top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Make some memories",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 64),
                      child: Text(
                        "🦜 Relax and make the booking process as easy aspossible!",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> TravelHomePage()));
                          },
                          child: PhysicalModel(
                            color: Colors.white,
                            elevation: 4,
                            shadowColor: Colors.blue[400]!,
                            borderRadius: BorderRadius.circular(24),
                            child: Container(
                              height: 42,
                              width: 160,
                              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(24)),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Start",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            )
          ],
        ),
      ),
    );
  }
}
