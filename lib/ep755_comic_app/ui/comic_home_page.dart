import 'package:flutter/cupertino.dart';
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
                child: PhysicalModel(
                  elevation: 2,
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
                  child: Container(
                    height: 340,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24))),
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              height: 4,
                              width: 24,
                              decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Top Author"),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
                                  ],
                                ),
                                Expanded(child: ListView.builder(
                                    itemCount: 4,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index){
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        PhysicalModel(
                                          color: Colors.black.withOpacity(0.6),
                                          borderRadius: BorderRadius.circular(48),
                                          shape: BoxShape.circle,
                                          elevation: 7,
                                          child: Container(
                                            height: 64,
                                            width: 64,
                                            decoration:BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Text("Dreamwalker")
                                      ],
                                    ),
                                  );
                                }))
                              ],
                            ),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Placeholder(),
                          flex: 5,
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
