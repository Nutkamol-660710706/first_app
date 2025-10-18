import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final String text;
  const CustomCard({required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: color,borderRadius: BorderRadius.circular(30)
              ),
              child: Text(text),
    );
  }
}