import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  //final Color color;
  final String name;
  final String position;
  final String email;
  final String phone;
  final String mypic;
  const ProfileCard({super.key, 
      required this.name,
      required this.position,
      required this.email,
      required this.phone,
      required this.mypic,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 300,
      color:Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                mypic,
              ),
            ),
          Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(position,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email, color: Colors.blue),
            SizedBox(width: 8),
            Text(email),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone, color: Colors.green),
            SizedBox(width: 8),
            Text(phone),
          ],
        ),
        ],
      ),
    );
  }
}