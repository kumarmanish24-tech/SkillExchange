import 'package:flutter/material.dart';


class cardforprojects extends StatelessWidget {
  final String title;
  final String subtitle;
  final String Projectimage;
  final String teach1;
  final String teach2;
  final String teach3;
  final String needmember;


  const cardforprojects({
    super.key,
    required this.title,
    required this.subtitle,
    required this.Projectimage,
    required this.teach1,
    required this.teach2,
    required this.teach3,
    required this.needmember,



  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 90,
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
           // color: Colors.red,
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 15,),
                  Image.asset(Projectimage,height: 50,width: 50,),
                ],
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(title,style: TextStyle(fontWeight: FontWeight.w500),),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(0.1),

                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            teach1,
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
                            color: Colors.teal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            teach2,
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
                            color: Colors.teal.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            teach3,
                            style: const TextStyle(
                              color: Colors.teal,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("Need ${needmember} more members",style: TextStyle(color: Colors.black54),),

                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  SizedBox(height: 5,),
                  Text("${needmember}/5 Members",style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 18,),
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

                        Text('Join Project',
                          style: TextStyle(fontSize: 12),

                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}