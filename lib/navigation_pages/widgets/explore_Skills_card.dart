import 'package:flutter/material.dart';


class explore_Card extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;


  const explore_Card({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,


  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5,),
        Container(
            width: 100,
            height: 110,

            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.07),
              // gradient: LinearGradient(
              //   colors: [Colors.blue.shade50, Colors.purple.shade50],
              // ),



              borderRadius: BorderRadius.circular(
                10,
              ), // Adjust the double value for curve intensity
              // border: Border.all(
              //   color: Colors.black12, // Border outline color
              //   width: 1, // Border outline thickness
              // ),
            ),
            // color: Colors.red,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 5,),
                Image.asset(image,height: 40,width: 40,),
                SizedBox(height: 5,),
                Text(title.toUpperCase(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                Text("${subtitle} learners",style: TextStyle(color: Colors.black54),)

              ],
            )
        ),
      ],
    );
  }
}