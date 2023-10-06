import 'package:flutter/material.dart';
import 'package:helloworld/my_cinema.dart';
import 'package:helloworld/my_classroom.dart';
import 'package:helloworld/my_home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: MyCinema(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
    );
  }
}
