// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   BottomNavBar ({super.key, required this.onTabChange});


  @override 
  Widget build (BuildContext context) {
    return Container(
child: Padding(
  padding: const EdgeInsets.symmetric(vertical: 20),
  child: GNav(
    color: Colors.grey[400],
    activeColor: Colors.grey[700],
    tabActiveBorder: Border.all(color: Colors.white),
    tabBackgroundColor: Colors.green.shade50,
    mainAxisAlignment: MainAxisAlignment.center,
    tabBorderRadius: 16,
    onTabChange: (value) => onTabChange!(value),
    tabs:[
    GButton(icon: Icons.home, 
    text: "Shop",),
    GButton(icon: Icons.shopping_bag, 
    text: "Cart",),
  ]),
),
    );
  }



}