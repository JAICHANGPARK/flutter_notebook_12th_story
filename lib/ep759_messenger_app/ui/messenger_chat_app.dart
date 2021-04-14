import 'package:flutter/material.dart';

class MessengerChatPage extends StatefulWidget {
  MessengerChatPage({Key? key}) : super(key: key);

  @override
  _MessengerChatAppState createState() => _MessengerChatAppState();
}

class _MessengerChatAppState extends State<MessengerChatPage> {
  TextEditingController _textEditingController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Expanded(
                  flex: 3,
                  child: Placeholder()),
            Divider(color: Colors.grey, thickness: 1.5,),
            Expanded(
                flex: 20,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.55,
                        child: Placeholder(),
                      ),
                      Divider(color: Colors.grey, thickness: 1.5,),
                      SizedBox(
                        height: 72,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_outlined)),
                              Expanded(child: TextField(
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                    hintText: "Write a message"
                                ),
                              )),
                              IconButton(onPressed: (){}, icon: Icon(Icons.sticky_note_2)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.mic_none_outlined))
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




























