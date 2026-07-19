import 'package:flutter/material.dart';
import 'package:ex32/colors/colors.dart';
import 'dart:math';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 130,
              width: 350,
              // color: Colors.blueAccent,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(height: 20,),
                      CircleAvatar(radius: 55, backgroundColor: Colors.red),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Manish kumar",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text("@manish_dev", style: TextStyle(color: Colors.blue)),
                      Row(
                        children: [
                          Icon(Icons.place_outlined, size: 15),
                          SizedBox(width: 5),
                          Text(
                            "Varanasi,india",
                            style: TextStyle(color: Colors.black54),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [



                          SizedBox(width: 190,
                            height: 40,
                            child: Expanded(
                              child: Text(
                                'I love building apps and teaching waht i know',
                                style: TextStyle(color: Colors.black54),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 110,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05), // Shadow color with transparency
                        spreadRadius: 1, // Extends the shadow past the box dimensions
                        blurRadius: 2, // Softens the shadow edges
                        offset: const Offset(0, 1), // Positions shadow (x: right/left, y: down/up)
                      ),
                    ],

                    borderRadius: BorderRadius.circular(10), // Adjust the double value for curve intensity
                    border: Border.all(
                      color: Colors.black12, // Border outline color
                      width: 1,           // Border outline thickness
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(

                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(

                          color: Colors.tealAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.school_outlined,size: 20,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text("32", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                          Text("Sessions", style: TextStyle(color: Colors.black54,fontSize: 12)),
                        ],
                      )

                    ],
                  )
                ),
                Container(
                    height: 50,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05), // Shadow color with transparency
                          spreadRadius: 1, // Extends the shadow past the box dimensions
                          blurRadius: 2, // Softens the shadow edges
                          offset: const Offset(0, 1), // Positions shadow (x: right/left, y: down/up)
                        ),
                      ],

                      borderRadius: BorderRadius.circular(10), // Adjust the double value for curve intensity
                      border: Border.all(
                        color: Colors.black12, // Border outline color
                        width: 1,           // Border outline thickness
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(

                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.star,size: 20,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("4.8", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                            Text("Rating(120)", style: TextStyle(color: Colors.black54,fontSize: 12)),
                          ],
                        )

                      ],
                    )
                ),
                Container(
                    height: 50,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05), // Shadow color with transparency
                          spreadRadius: 1, // Extends the shadow past the box dimensions
                          blurRadius: 2, // Softens the shadow edges
                          offset: const Offset(0, 1), // Positions shadow (x: right/left, y: down/up)
                        ),
                      ],

                      borderRadius: BorderRadius.circular(10), // Adjust the double value for curve intensity
                      border: Border.all(
                        color: Colors.black12, // Border outline color
                        width: 1,           // Border outline thickness
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(

                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.people_alt_outlined,size: 20,
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text("32", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14)),
                            Text("Connections", style: TextStyle(color: Colors.black54,fontSize: 12)),
                          ],
                        )

                      ],
                    )
                ),


              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (){

                  } ,

                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 40),
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10), // Set your radius here
                    ),

                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit_calendar_outlined,size: 15,),
                      SizedBox(width: 5,),
                      Text(
                        'Edit Profile'
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10), // Set your radius here
                    ),
                    minimumSize: const Size(150, 40),
                    side: BorderSide(


                          color:  Colors.teal,
                    ),
                  ),
                  child:  Row(
                    children: [
                      Icon(Icons.share_outlined),
                      SizedBox(width: 5,),
                      Text('Share Profile',style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 400,
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          color: const Color(0xFFE8F0FE),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        labelColor: const Color(0xFF1A73E8),
                        unselectedLabelColor: Colors.grey.shade700,
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.local_fire_department_rounded, size: 20),
                            text: "Popular",
                          ),
                          Tab(
                            icon: Icon(Icons.menu_book_rounded, size: 20),
                            text: "Courses",
                          ),
                          Tab(
                            icon: Icon(Icons.bookmark_rounded, size: 20),
                            text: "Saved",
                          ),
                        ],
                      ),
                    ),

                    const Expanded(
                      child: TabBarView(
                        children: [
                          Center(child: Text("Popular")),
                          Center(child: Text("Courses")),
                          Center(child: Text("Saved")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
