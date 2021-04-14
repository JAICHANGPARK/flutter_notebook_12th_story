import 'package:flutter/material.dart';

class MessengerChatPage extends StatefulWidget {
  MessengerChatPage({Key? key}) : super(key: key);

  @override
  _MessengerChatAppState createState() => _MessengerChatAppState();
}

class _MessengerChatAppState extends State<MessengerChatPage> {
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
                child: Placeholder()),
            Divider(color: Colors.grey, thickness: 1.5,),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_outlined))
                  ],
                )),
          ],
        ),
      ),

    );
  }
}




























