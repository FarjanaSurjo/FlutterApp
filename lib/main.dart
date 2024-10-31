//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_app/alert.dart';

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      color: Colors.amberAccent,
      debugShowCheckedModeBanner: false,
      home: HomeAcivity(),
    );
  }
}
