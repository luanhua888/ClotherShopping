import 'package:e_commerce/screens/homepage.dart';
import 'package:e_commerce/widgets/singleproduct.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  final String name;
  ListProduct({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => HomePage()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: <Widget>[
            Container(
              height: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 650,
              child: GridView.count(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                children: [
                  SingleProduct(
                      image: "Jacket.png",
                      price: 30.0,
                      name: "MONO TRACK JACKET"),
                  SingleProduct(
                      image: "puzzlesshirt.png",
                      price: 25.0,
                      name: "PUZZLE SHIRT"),
                  SingleProduct(
                      image: "Jacket.png",
                      price: 30.0,
                      name: "MONO TRACK JACKET"),
                  SingleProduct(
                      image: "puzzlesshirt.png",
                      price: 25.0,
                      name: "PUZZLE SHIRT"),
                  SingleProduct(
                      image: "Jacket.png",
                      price: 30.0,
                      name: "MONO TRACK JACKET"),
                  SingleProduct(
                      image: "puzzlesshirt.png",
                      price: 25.0,
                      name: "PUZZLE SHIRT"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
