import 'package:flutter/material.dart';
import 'package:ex32/navigation_pages/widgets/users_card.dart';
import 'package:ex32/navigation_pages/widgets/userdetailcart.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  final List<Map<String, dynamic>> users = [
    {
      "title": "Manish",
      "subtitle": "Kumar",
      "match": "454",
      "teach": "Flutter",
      "learn": "Firebase",
      "avatar": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop",
      "rating": "4.8",
      "like": true,
    },
    {
      "title": "Rahul",
      "subtitle": "Sharma",
      "match": "320",
      "teach": "React",
      "learn": "Node.js",
      "avatar": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
      "rating": "4.5",
      "like": false,
    },
    {
      "title": "Priya",
      "subtitle": "Singh",
      "match": "290",
      "teach": "Python",
      "learn": "AI",
      "avatar": "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
      "rating": "4.9",
      "like": true,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Discover skill,people and opportunities",style: TextStyle(fontSize: 13,color: Colors.black54),)
          ],
        ),

      ),
      body: Center(
        child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                height: 252,
                width: double.infinity,



                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 5,

                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: const BorderRadius.only(

                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Recommended For You",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(color: Colors.blue),))
                        ],
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];

                            return User_Card(
                              title: user["title"],
                              subtitle: user["subtitle"],
                              match: user["match"],
                              teach: user["teach"],
                              learn: user["learn"],
                              avatar: user["avatar"],
                              rating: user["rating"],
                              like: user["like"],
                            );
                          },
                        ),
                      ),




                    ],
                  ),
                ),
              ),
            ),
            User_Card_explore(name: "Priya Singh", master: "UI Design", match: "93", teach: "Ui Design,Figma", learn: "Flutter,Dart", avatar:"https://images.unsplash.com/photo-1494790108377-be9c29b29330", rating: "4.8", like: true)









          ],
        ),
      ),
    );
  }
}


