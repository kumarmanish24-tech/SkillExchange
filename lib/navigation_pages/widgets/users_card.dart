import 'package:flutter/material.dart';


class User_Card extends StatelessWidget {
  final String title;
  final String subtitle;
  final String match;
  final String teach;
  final String learn;
  final String avatar;
  final String rating;
  final bool like;

  const User_Card({
    super.key,
    required this.title,
    required this.subtitle,
    required this.match,
    required this.teach,
    required this.learn,
    required this.avatar,
    required this.rating,
    required this.like,

  });

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
           color: Colors.blue.withOpacity(0.06),
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
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(avatar),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 50,),
                      Icon(Icons.favorite_border),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Container(
                    height: 20,
                    width: 60,

                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.2),

                      borderRadius: BorderRadius.circular(
                        5,
                      ), // Adjust the double value for curve intensity

                    ),
                    child: Center(
                      child: Text(
                        "${match}% Match",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 5,),
              Column(
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.w600,),),
                  Text(subtitle,style: TextStyle(fontSize: 12),),
                ],
              ),
              SizedBox(width: 1,)
            ],
          ),

          Row(
            children: [
              SizedBox(width: 10,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Container(
                    height: 20,
                    width: 100,

                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.2),

                      borderRadius: BorderRadius.circular(
                        5,
                      ), // Adjust the double value for curve intensity

                    ),
                    child: Center(
                      child: Text(
                        "Teach: ${teach}",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 20,
                    width: 100,

                    decoration: BoxDecoration(
                    color: Color.fromRGBO(127, 3, 252,1).withOpacity(0.2),

                      borderRadius: BorderRadius.circular(
                        5,
                      ), // Adjust the double value for curve intensity

                    ),
                    child: Center(
                      child: Text(
                        "Learn: ${learn}",
                        style: TextStyle(
                          color: Color.fromRGBO(127, 3, 252,1),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),


                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      Text("${rating}(98)",style: TextStyle(color: Colors.black54,fontSize: 12),),
                    ],
                  ),
                ],
              ),
            ],
          ),


        ],
      )
    );
  }
}