import 'package:flutter/material.dart';
import 'package:ex32/navigation_pages/widgets/users_card.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {


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
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
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
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(

                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Item ${index + 1}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),







          ],
        ),
      ),
    );
  }
}


