import 'package:flutter/material.dart';
import 'package:ex32/navigation_pages/widgets/hero_carousel.dart';
import 'package:lottie/lottie.dart';
import 'package:ex32/navigation_pages/widgets/cards.dart';
import 'package:ex32/navigation_pages/widgets/users_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: Row(
          children: [
            SizedBox(width: 15),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
              ),
            ),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            "Hello, Manish",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            HeroCarousel(),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 5,

                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: const BorderRadius.only(

                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        "Upcoming Session",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: LinearGradient(
                        colors: [Colors.blue.shade50, Colors.purple.shade50],
                      ),



                      borderRadius: BorderRadius.circular(
                        10,
                      ), // Adjust the double value for curve intensity
                      // border: Border.all(
                      //   color: Colors.black12, // Border outline color
                      //   width: 1, // Border outline thickness
                      // ),
                    ),
                    child: UserCard(
                      title: "UI/Ux Design Basics",
                      subtitle: "with Priya Sharma",
                      date: "today",
                      time: "7:00 PM",
                      starts_time: "1h 18m",
                      avatar:  "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwcHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",

                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                height: 110,
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
                        "Upcoming Session",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),

                      Center(
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: Lottie.asset("assets/lottie/NO RESULTS.json"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                height: 222,
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
                        "Recommended For You",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),

                      SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 180,
                          child: Row(
                            children: [
                              Container(
                                height: 180,
                                width: 160,
                                // color: Colors.red,
                                child: User_Card(title: "Ananya Singh", subtitle: "UI/UX Designer", match: "92", teach: "UI/UX, Figma", learn: "Flutter Firebase", avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: "4.9", like: false),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 180,
                                width: 160,
                                // color: Colors.red,
                                child: User_Card(title: "Ananya Singh", subtitle: "UI/UX Designer", match: "92", teach: "UI/UX, Figma", learn: "Flutter Firebase", avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: "4.9", like: false),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 180,
                                width: 160,
                                // color: Colors.red,
                                child: User_Card(title: "Ananya Singh", subtitle: "UI/UX Designer", match: "92", teach: "UI/UX, Figma", learn: "Flutter Firebase", avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: "4.9", like: false),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 180,
                                width: 160,
                                // color: Colors.red,
                                child: User_Card(title: "Ananya Singh", subtitle: "UI/UX Designer", match: "92", teach: "UI/UX, Figma", learn: "Flutter Firebase", avatar: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", rating: "4.9", like: false),
                              ),
                            ],
                          ),
                        ),
                      )
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
