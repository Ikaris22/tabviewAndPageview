import 'package:flutter/material.dart';
class PageChild extends StatelessWidget{
  final String text;
 const PageChild({super.key,  required this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          text,
          style: const TextStyle(
          fontSize: 40,color: Colors.indigo,fontWeight: FontWeight.bold)),
    );
  }

}