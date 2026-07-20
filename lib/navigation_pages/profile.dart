import 'package:flutter/material.dart';
import 'package:ex32/colors/colors.dart';
import 'dart:math';
import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:ex32/navigation_pages/widgets/custom_tab_bar.dart';
import 'package:lottie/lottie.dart';

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
            SizedBox(height: 30),
            Container(
              height: 130,
              width: 350,
              // color: Colors.blueAccent,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      SizedBox(height: 20),
                      CircleAvatar(radius: 55,
                        backgroundColor: Colors.teal,
                        child: CircleAvatar(
                          radius: 53,
                          backgroundImage: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                          ),
                        ),
                      ),
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
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(
                            width: 190,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 110,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.05,
                        ), // Shadow color with transparency
                        spreadRadius:
                            1, // Extends the shadow past the box dimensions
                        blurRadius: 2, // Softens the shadow edges
                        offset: const Offset(
                          0,
                          1,
                        ), // Positions shadow (x: right/left, y: down/up)
                      ),
                    ],

                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Adjust the double value for curve intensity
                    border: Border.all(
                      color: Colors.black12, // Border outline color
                      width: 1, // Border outline thickness
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.tealAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.school_outlined,
                          size: 20,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "32",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Sessions",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 110,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.05,
                        ), // Shadow color with transparency
                        spreadRadius:
                            1, // Extends the shadow past the box dimensions
                        blurRadius: 2, // Softens the shadow edges
                        offset: const Offset(
                          0,
                          1,
                        ), // Positions shadow (x: right/left, y: down/up)
                      ),
                    ],

                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Adjust the double value for curve intensity
                    border: Border.all(
                      color: Colors.black12, // Border outline color
                      width: 1, // Border outline thickness
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.tealAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "4.8",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Rating(120)",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 110,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.05,
                        ), // Shadow color with transparency
                        spreadRadius:
                            1, // Extends the shadow past the box dimensions
                        blurRadius: 2, // Softens the shadow edges
                        offset: const Offset(
                          0,
                          1,
                        ), // Positions shadow (x: right/left, y: down/up)
                      ),
                    ],

                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Adjust the double value for curve intensity
                    border: Border.all(
                      color: Colors.black12, // Border outline color
                      width: 1, // Border outline thickness
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.tealAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.people_alt_outlined,
                          size: 20,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "32",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Connections",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 40),
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
                      Icon(Icons.edit_calendar_outlined, size: 15),
                      SizedBox(width: 5),
                      Text('Edit Profile'),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Set your radius here
                    ),
                    minimumSize: const Size(150, 40),
                    side: BorderSide(color: Colors.teal),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.share_outlined),
                      SizedBox(width: 5),
                      Text(
                        'Share Profile',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              width: 350,
              child: CustomTabBar(
                tabs: const [
                  Tab(text: "Overview"),
                  Tab(text: "Learn"),
                  Tab(text: "Teach"),
                ],
                pages: [
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 350,

                            decoration: BoxDecoration(
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                    0.05,
                                  ), // Shadow color with transparency
                                  spreadRadius:
                                      1, // Extends the shadow past the box dimensions
                                  blurRadius: 2, // Softens the shadow edges
                                  offset: const Offset(
                                    0,
                                    1,
                                  ), // Positions shadow (x: right/left, y: down/up)
                                ),
                              ],

                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Adjust the double value for curve intensity
                              border: Border.all(
                                color: Colors.black12, // Border outline color
                                width: 1, // Border outline thickness
                              ),
                            ),
                            // color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About Me",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      "Flutter Developer and passionate about teaching."
                                      "I enjoy solving problems and helping other"
                                      "",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Languages",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                                1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                                1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Hindi",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Availability",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.black54,
                                            size: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Weekday Evening, Weekends",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 350,

                            decoration: BoxDecoration(
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                    0.05,
                                  ), // Shadow color with transparency
                                  spreadRadius:
                                  1, // Extends the shadow past the box dimensions
                                  blurRadius: 2, // Softens the shadow edges
                                  offset: const Offset(
                                    0,
                                    1,
                                  ), // Positions shadow (x: right/left, y: down/up)
                                ),
                              ],

                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Adjust the double value for curve intensity
                              border: Border.all(
                                color: Colors.black12, // Border outline color
                                width: 1, // Border outline thickness
                              ),
                            ),
                            // color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About Me",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      "Flutter Developer and passionate about teaching."
                                          "I enjoy solving problems and helping other"
                                          "",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Languages",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                            1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                            1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Hindi",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Availability",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.black54,
                                            size: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Weekday Evening, Weekends",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 350,

                            decoration: BoxDecoration(
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(
                                    0.05,
                                  ), // Shadow color with transparency
                                  spreadRadius:
                                  1, // Extends the shadow past the box dimensions
                                  blurRadius: 2, // Softens the shadow edges
                                  offset: const Offset(
                                    0,
                                    1,
                                  ), // Positions shadow (x: right/left, y: down/up)
                                ),
                              ],

                              borderRadius: BorderRadius.circular(
                                10,
                              ), // Adjust the double value for curve intensity
                              border: Border.all(
                                color: Colors.black12, // Border outline color
                                width: 1, // Border outline thickness
                              ),
                            ),
                            // color: Colors.red,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "About Me",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      "Flutter Developer and passionate about teaching."
                                          "I enjoy solving problems and helping other"
                                          "",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Languages",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                            1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "English",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(
                                        height: 30,
                                        width: 60,

                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ), // Adjust the double value for curve intensity
                                          border: Border.all(
                                            color: Colors
                                                .black12, // Border outline color
                                            width:
                                            1, // Border outline thickness
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Hindi",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text(
                                        "Availability",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time,
                                            color: Colors.black54,
                                            size: 15,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Weekday Evening, Weekends",
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                height: 165,
                width: 350,

                decoration: BoxDecoration(
                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(
                        0.05,
                      ), // Shadow color with transparency
                      spreadRadius:
                          1, // Extends the shadow past the box dimensions
                      blurRadius: 2, // Softens the shadow edges
                      offset: const Offset(
                        0,
                        1,
                      ), // Positions shadow (x: right/left, y: down/up)
                    ),
                  ],

                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Adjust the double value for curve intensity
                  border: Border.all(
                    color: Colors.black12, // Border outline color
                    width: 1, // Border outline thickness
                  ),
                ),
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent Activity",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),

                      Center(
                        child: SizedBox(height: 115,width: 200,
                        child: Lottie.asset("assets/lottie/NO RESULTS.json")
                          ,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
