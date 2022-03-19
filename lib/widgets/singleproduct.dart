import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  final double price;
  final String name;
  SingleProduct({this.image, this.price, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
        width: 178,
        child: Column(
          children: <Widget>[
            Container(
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/$image"),
                ),
              ),
            ),
            Text(
              "\$ ${price.toString()}",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xff9b96d6),
              ),
            ),
            Text(name, style: TextStyle(fontSize: 15))
          ],
        ),
      ),
    );
  }
}
