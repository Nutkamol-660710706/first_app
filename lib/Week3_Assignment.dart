import 'package:flutter/material.dart';
// ignore: deprecated_member_use, avoid_web_libraries_in_flutter
import 'dart:html' as html;

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(20),
              boxShadow: [BoxShadow(
              color: Colors.black,
              blurRadius: 6,
              offset: Offset(0, 3)
            )]
            ),
            child:Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('1.jpg'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Nutkamol Piriyatanasrub',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('ID : 660710706',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('Major : Information Technology',style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  height: 15,
                ),
                Text('งานอดิเรก เล่นเกม',style:TextStyle(fontSize: 14)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: (){
                        html.window.open('https://www.facebook.com/Ninji0','fackbook');
                      }
                      ),
                  ],
                )
            ],
            )
           ),
        )
    ); 
  }
}