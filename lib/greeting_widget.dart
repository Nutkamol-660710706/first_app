import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String name;
  final Color colorBox;
  const GreetingWidget({super.key, required this.name, required this.colorBox});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Statelsess Widget')),
      body: Center(
        child:Container(
          color:colorBox,
          child: Text('Hello $name')
          ),
        ) 
    );
  }
}