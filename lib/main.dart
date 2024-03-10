// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeapp/pages/home_page.dart';
import 'package:shoeapp/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
     routes: {
      '/intro':(context) => const IntroPage(),
      '/homepage':(context) => const HomePage(),
     }
    );
  }
}

