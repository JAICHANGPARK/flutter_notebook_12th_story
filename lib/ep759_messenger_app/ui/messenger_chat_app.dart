import 'package:flutter/cupertino.dart';
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
                            buildSendWithImageWidget(),
                            buildSendTextOnlyWidget(),
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

  Widget buildSendWithImageWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/19484515?v=4"),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8))),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(
                        "https://dribbble.com/shots/15474874-Messenger-Mobile-Version/attachments/7248290?mode=media",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 16, decoration: TextDecoration.underline),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 4,
                              height: 300,
                              decoration:
                                  BoxDecoration(color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(4)),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dribbble",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: Text(
                                      "Banking UI kit for Figma",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitat",
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4),
                                    child: Image.network(
                                      "https://cdn.dribbble.com/users/900341/screenshots/15474874/media/b6afef9541a56d5d95b13a8ee0b57f00.jpg",
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "9:45",
                        style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget buildSendTextOnlyWidget(String text){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
              NetworkImage("https://avatars.githubusercontent.com/u/19484515?v=4"),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          // "this is my new shot for dribbble 😎",
                          text,
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w700),
                        )),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            "9:45",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
