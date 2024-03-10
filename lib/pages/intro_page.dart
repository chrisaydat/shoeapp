// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoeapp/main.dart';
import 'package:shoeapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/images/aydatplacelogo.jpg',
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'The Aydat Place',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Text(
                'A is Aydat \n A is Excellence',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()
              ),
            );
              },
              child: Text(
                'Get started',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}
