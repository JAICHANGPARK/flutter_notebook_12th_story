import 'package:flutter/material.dart';

class MessengerChatPage extends StatefulWidget {
  MessengerChatPage({Key? key}) : super(key: key);

  @override
  _MessengerChatAppState createState() => _MessengerChatAppState();
}

class _MessengerChatAppState extends State<MessengerChatPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Icon(
                            Icons.keyboard_arrow_left_outlined,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Design Team",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("8 members, 5 online"),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "UI",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            Expanded(
                flex: 25,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.45,
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  CircleAvatar(radius: 32,
                                  ),
                                  Expanded(child: Column(children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          
                                        ],
                                      ),
                                    )

                                  ],))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1.5,
                      ),
                      SizedBox(
                        height: 58,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              IconButton(onPressed: () {}, icon: Icon(Icons.attach_file_outlined)),
                              Expanded(
                                  child: TextField(
                                controller: _textEditingController,
                                decoration: InputDecoration(hintText: "Write a message", border: InputBorder.none),
                                onSubmitted: (result) {
                                  _textEditingController.clear();
                                },
                              )),
                              IconButton(onPressed: () {}, icon: Icon(Icons.sticky_note_2)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.mic_none_outlined))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
