import 'package:flutter/material.dart';
import 'package:helloworld/my_cinema.dart';
import 'package:helloworld/my_classroom.dart';
import 'package:helloworld/my_form.dart';
import 'package:helloworld/my_home_page.dart';
import 'package:helloworld/my_instagram.dart';
import 'package:helloworld/my_login_instagram.dart';
import 'package:helloworld/my_math.dart';
import 'package:helloworld/my_register_instagram.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Group 02",
      home: MyRegisterInsta(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
    );
  }
}
