//import 'package:first_app/Week3_Assignment.dart';
//import 'package:first_app/counter_widget.dart';
//import 'package:first_app/greeting_widget.dart';
//import 'package:first_ap  p/navigation_ex/first_page.dart';
//import 'package:first_app/navigation_ex/second_page.dart';
//import 'package:first_app/greeting_widget.dart';
//import 'package:first_app/form/form_input.dart';
//import 'package:first_app/api_example/api_example.dart';
import 'package:first_app/simple_custom_widget.dart';
//import 'package:first_app/form/form_input.dart';
//import 'package:first_app/form/from_example1.dart';
import 'package:flutter/material.dart';
//import 'package:first_app/form/from_example1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const SimpleCustomWidget(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => FirstPage(),
        //'/second': (context) => SecondPage()
      //},
    );
  }
}

