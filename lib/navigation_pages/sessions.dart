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
