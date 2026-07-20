import 'package:flutter/material.dart';


class UserCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String time;
  final String starts_time;
  final String avatar;

  const UserCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.time,
    required this.starts_time,
    required this.avatar,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 350,
      // color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(avatar),
          ),
          SizedBox(width: 10,),

          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(title,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13),),
              Text(subtitle,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 11,color: Colors.black54),),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(Icons.access_time,color: Colors.black,size: 13,),
                  SizedBox(width: 5,),
                  Text(date.toUpperCase(),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10,color: Colors.black54)),
                  SizedBox(width: 5,),
                  Text(time,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10,color: Colors.black54)),

                ],
              ),

            ],
          ),
          Spacer(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8,top: 5),
                child: TextButton(onPressed: (){}, child: Text("Join Session",style: TextStyle(fontSize: 12),),  style: TextButton.styleFrom(
                  backgroundColor: Colors.teal.withOpacity(0.8), // Sets the background color
                  foregroundColor: Colors.white, // Sets the text/icon color
                ),),
              ),
              Text("Start in${starts_time}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.teal),)
            ],
          ),


        ],
      ),
    );
  }
}