// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoeapp/components/bottom-navbar/bottom_nav_bar.dart';
import 'package:shoeapp/pages/cart_page.dart';
import 'package:shoeapp/pages/shop_page.dart';

class HomePage extends StatefulWidget{
   const HomePage ({super.key});

  @override 
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // this selected index is controllling the bottom nav bar
  int _selectedIndex = 0;

  //this method then updates our selected index whenever the user taps the bottom bar

  final List<Widget> _pages = [
 ShopPage(),
 CartPage(),
    ];

  void navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Shop'),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
            },
             icon: Icon(Icons.list,
            color: Colors.black,)
            );
          }
        ),
        actions: [
        IconButton(onPressed: null, icon: Icon(Icons.notifications)),
        IconButton(onPressed: null, icon: Icon(Icons.search)),
        ],),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
           children: [
            DrawerHeader(
              child: Image.asset('assets/images/aydatplacelogo.jpg'),
              ),
              Divider(
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text('Home'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                ),
              ),
              SizedBox(height: 400,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('Logout'),
                ),
              ),
           ]
          ),
        ),
           
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottombar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}