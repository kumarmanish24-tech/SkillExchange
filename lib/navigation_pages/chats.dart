import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chats",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Connect chat, people or skills...",style: TextStyle(fontSize: 13,color: Colors.black54),)
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("chats")
          ],
        ),
      ),

    );
  }
}
