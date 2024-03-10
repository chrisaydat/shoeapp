import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:shoeapp/models/product.dart';

class ProductTile extends StatelessWidget {
  Product product;
    ProductTile ({super.key, required this.product});
  @override 
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.only(left: 25 ),
width: 280,
decoration: BoxDecoration(
  color: Colors.grey.shade100,
  borderRadius: BorderRadius.circular(12),
),
child: Column(
  children: [
    //shoe pic 

    SizedBox(
      child: Image.asset(product.imagePath),
    )

    //description


    //price


    //button to add to cart

  ],
),
    );

  }
}