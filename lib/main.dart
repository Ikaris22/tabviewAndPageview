import 'package:flutter/material.dart';
import 'package:pageview_example/screens/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text('PageViewExample'),
       ),
       body: const PageViewExample(),
     ),
   );
  }
}

