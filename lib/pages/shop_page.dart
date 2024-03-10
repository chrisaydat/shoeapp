// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       children: [
        //search bar placement
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text('Search',
            style: TextStyle(
              color: Colors.grey,
            ),),
            Icon(Icons.search)
            ],
          )
        ),


        // messages
        Padding(
          padding: const EdgeInsets.symmetric(vertical:25.0),
          child: Text('everything for everyone',
          style: TextStyle(color: Colors.grey.shade600),
          ),
        ),


        //hotpicks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Groceries 🛒',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ), 
            ),
            Text('See All 👀',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.blue,
            ), )
          ],
          ),
        ),
       ],
      ),
    );
  }
}
