import 'package:flutter/material.dart';

class Sessions extends StatefulWidget {
  const Sessions({Key? key}) : super(key: key);

  @override
  State<Sessions> createState() => _SessionsState();
}

class _SessionsState extends State<Sessions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sessions",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Manage your skill exchange sessions",style: TextStyle(fontSize: 13,color: Colors.black54),)
          ],
        ),
      ),
      body: Center(
        child:
        Column(
          children: [
            Text("Sessions")
          ],
        ),
      ),
    );
  }
}
