import 'package:flutter/material.dart';


class User_Card_explore extends StatelessWidget {
  final String name;
  final String master;
  final String match;
  final String teach;
  final String learn1;
  final String learn2;
  final String avatar;
  final String rating;
  final bool like;

  const User_Card_explore({
    super.key,
    required this.name,
    required this.master,
    required this.match,
    required this.teach,
    required this.learn1,
    required this.learn2,
    required this.avatar,
    required this.rating,
    required this.like,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 5,),
        Container(
          width: 180,
            height: 250,

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
                      padding: const EdgeInsets.only(left: 8.0 ,top: 8),
                      child: Container(
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
                            "${match} Match",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(avatar),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),

                        SizedBox(height: 5,),
                        Text(name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                        SizedBox(height: 5,),
                        Text(master,style: TextStyle(fontSize: 12),),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,size: 15,),
                            Text("${rating} | 98 Review",style: TextStyle(color: Colors.black54,fontSize: 12),),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 5,),

                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Teaches",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500,fontSize: 15),),

                      ],
                    ),
                    Row(
                      children: [


                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              learn1,
                              style: const TextStyle(
                                color: Colors.teal,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),



                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              learn2,
                              style: const TextStyle(
                                color: Colors.teal,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
                SizedBox(height: 1,),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Learn",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w500,fontSize: 15),),

                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0 ,top: 8),
                          child: Container(
                            height: 20,
                            width: 50,

                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.2),

                              borderRadius: BorderRadius.circular(
                                5,
                              ), // Adjust the double value for curve intensity

                            ),
                            child: Center(
                              child: Text(
                                "UI/UX",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0 ,top: 8),
                          child: Container(
                            height: 20,
                            width: 50,

                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(0.2),

                              borderRadius: BorderRadius.circular(
                                5,
                              ), // Adjust the double value for curve intensity

                            ),
                            child: Center(
                              child: Text(
                                "Figma",
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(10, 30),
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ), // Set your radius here
                        ),
                      ),
                      child: Row(
                        children: [

                          Text('View Profile',
                            style: TextStyle(fontSize: 12),

                          ),
                        ],
                      ),
                    ),


                  ],
                ),












              ],
            )
        ),
      ],
    );
  }
}