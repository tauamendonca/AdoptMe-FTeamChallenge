// import 'package:adoptme/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:adoptme/view/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me adote',
      // ignore: prefer_const_constructors
      home: MainScreen(),
    );
  }
}
