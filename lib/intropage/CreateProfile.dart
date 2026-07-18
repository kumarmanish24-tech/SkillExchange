import 'package:flutter/material.dart';
import 'package:ex32/ex.dart';
class Createprofile extends StatefulWidget {
  const Createprofile({Key? key}) : super(key: key);

  @override
  State<Createprofile> createState() => _CreateprofileState();
}

class _CreateprofileState extends State<Createprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
        
              SizedBox(
                height: 810,
                width: 360,
                child: MyHorizontalStepper(),
              )
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
