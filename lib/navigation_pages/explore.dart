import 'package:flutter/material.dart';
import 'package:ex32/navigation_pages/widgets/explore_Skills_card.dart';
import 'package:ex32/navigation_pages/widgets/userdetailcart.dart';
import 'package:ex32/navigation_pages/widgets/cardforprojects.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  final List<Map<String, dynamic>> usersexplore = [

  {
  "name": "John Doe",
  "master": "Flutter",
  "match": "95%",
  "teach": "UI Design",
  "learn1": "State Management",
  "learn2": "Animations",
  "avatar": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop",
  "rating": 4.9,
  "like": true,
  },
  {
  "name": "Emma Wilson",
  "master": "Dart",
  "match": "92%",
  "teach": "Backend",
  "learn1": "Flutter",
  "learn2": "Firebase",
  "avatar": "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
  "rating": 4.8,
  "like": false,
  },
  {
  "name": "Michael Lee",
  "master": "Firebase",
  "match": "89%",
  "teach": "Authentication",
  "learn1": "Cloud Functions",
  "learn2": "Flutter",
  "avatar": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop",
  "rating": 4.7,
  "like": true,
  },
  {
  "name": "Sophia Brown",
  "master": "UI/UX",
  "match": "97%",
  "teach": "Figma",
  "learn1": "Flutter",
  "learn2": "Dart",
  "avatar": "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
  "rating": 5.0,
  "like": true,
  },
  {
  "name": "David Smith",
  "master": "Python",
  "match": "90%",
  "teach": "Machine Learning",
  "learn1": "Flutter",
  "learn2": "Data Science",
  "avatar": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
  "rating": 4.6,
  "like": false,
  },
    ];




  final List<Map<String, dynamic>> explore_skills = [
    {
      "title":"dart",
      "subtitle":"50.8k",
      "image":"assets/icons/Dart.png"

    },

    {
      "title":"figma",
      "subtitle":"45k",
      "image":"assets/icons/Figma.png"

    },
    {
      "title":"flutter",
      "subtitle":"1m",
      "image":"assets/icons/Flutter.png"

    },
    {
      "title":"react",
      "subtitle":"11k",
      "image":"assets/icons/icons8-react-native-240.png"

    },
    {
      "title":"node.js",
      "subtitle":"89k",
      "image":"assets/icons/Node.js.png"

    },
    {
      "title":"python",
      "subtitle":"5.8k",
      "image":"assets/icons/Python.png"

    },
    {
      "title":"typescript",
      "subtitle":"5.8k",
      "image":"assets/icons/TypeScript.png"

    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text(
              "Discover skill,people and opportunities",
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  height: 305,
                  width: double.infinity,
                  // color: Colors.red,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,

                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Recommended For You",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Expanded(

                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: usersexplore.length,
                                itemBuilder: (context, index) {
                                  final ur = usersexplore[index];
                                  return User_Card_explore(name: ur["name"], master: ur["master"], match: ur["match"], teach: ur["teach"], learn1: ur["learn1"], learn2: ur["learn2"], avatar: ur["avatar"], rating: ur["rating"].toString(), like:true);
                                })),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  height: 160,
                  width: double.infinity,
                   // color: Colors.red,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,

                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Explore Skills",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Expanded(

                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: explore_skills.length,
                                itemBuilder: (context, index) {
                                  final excard = explore_skills[index];
                                  return explore_Card(title: excard["title"], subtitle: excard["subtitle"], image: excard["image"]);})),



                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  height: 155,
                  width: double.infinity,
                    // color: Colors.red,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,

                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Projects For You",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        cardforprojects(title: "Expense Tracker App", subtitle: "no", Projectimage: "assets/icons/Android.png", teach1: "Flutter", teach2: "Firebase", teach3: "UI Design", needmember: "2")



                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  // color: Colors.red,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 5,

                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Explore Skills",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "View all",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Expanded(

                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: explore_skills.length,
                                itemBuilder: (context, index) {
                                  final excard = explore_skills[index];
                                  return explore_Card(title: excard["title"], subtitle: excard["subtitle"], image: excard["image"]);})),



                      ],
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
