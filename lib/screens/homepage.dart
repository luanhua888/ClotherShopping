import 'package:e_commerce/screens/listproduct.dart';
import 'package:e_commerce/widgets/singleproduct.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildCategoryProduct({String image, int color}) {
    return CircleAvatar(
      maxRadius: 36,
      backgroundColor: Color(color),
      backgroundImage: AssetImage("images/$image"),
    );
  }

  bool homeColor = true;

  bool cartColor = false;

  bool aboutColor = false;

  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Luan",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/userImage.png"),
              ),
              accountEmail: Text(
                "luan@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 24, 191, 233),
              ),
            ),
            ListTile(
              selected: homeColor,
              onTap: () {
                setState(() {
                  aboutColor = false;
                  cartColor = false;
                  homeColor = true;
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              selected: cartColor,
              onTap: () {
                setState(() {
                  aboutColor = false;
                  cartColor = true;
                  homeColor = false;
                });
              },
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            ListTile(
              onTap: () {
                setState(() {});
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
            ListTile(
              selected: aboutColor,
              onTap: () {
                setState(() {
                  aboutColor = true;
                  cartColor = false;
                  homeColor = false;
                });
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("HomePage", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[400],
        leading: IconButton(
            onPressed: () {
              _key.currentState.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 250,
                  width: 310,
                  child: Carousel(
                    autoplay: true,
                    showIndicator: false,
                    images: [
                      NetworkImage(
                          'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_13-_pro-5_4_1.jpg'),
                      NetworkImage(
                          'https://image.cellphones.com.vn/358x/media/catalog/product/m/i/mieng-sac-khong-day-energizer-magpa-wcp119bk-1.jpg'),
                      NetworkImage(
                          'https://image.cellphones.com.vn/220x/media/catalog/product/w/a/watch_3_leather.jpg'),
                      NetworkImage(
                          'https://image.cellphones.com.vn/220x/media/catalog/product/m/a/macbook-pro-2021-007_1.jpg'),
                      NetworkImage(
                          'https://image.cellphones.com.vn/220x/media/catalog/product/a/p/apple_ipad_pro_11_2021_m1_wifi_128gb.png'),
                      NetworkImage(
                          'https://cdn.cellphones.com.vn/media/catalog/product/cache/7/small_image/220x175/9df78eab33525d08d6e5fb8d27136e95/b/e/beats-solo-pro.jpg'),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categori",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View more",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      _buildCategoryProduct(
                          image: "dress.jpg", color: 0xff33dcfd),
                      _buildCategoryProduct(
                          image: "shirt.png", color: 0xfff38cdd),
                      _buildCategoryProduct(
                          image: "shoes.jpg", color: 0xfff38cdd),
                      _buildCategoryProduct(
                          image: "tie.png", color: 0xfff38cdd),
                      _buildCategoryProduct(
                          image: "pant.png", color: 0xfff38cdd),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                  "Featured",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (ctx) => ListProduct(
                                          name: "Featured",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "View more",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SingleProduct(
                                image: "Jacket.png",
                                price: 30.0,
                                name: "MONO TRACK JACKET"),
                            SingleProduct(
                                image: "puzzlesshirt.png",
                                price: 25.0,
                                name: "PUZZLE SHIRT"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "New achives",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (ctx) => ListProduct(
                                    name: "New achives",
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "View more",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(),
                        Row(
                          children: <Widget>[
                            SingleProduct(
                                image: "manpant.jpg",
                                price: 32.0,
                                name: "Men Pant"),
                            SingleProduct(
                                image: "mantie.jpg",
                                price: 26.0,
                                name: "Men Tie"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
