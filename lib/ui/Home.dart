import 'package:ecomerce/ui/Products.dart';
import 'package:ecomerce/ui/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("ShopApp", ),
        actions: <Widget>[
          new IconButton(icon:Icon(Icons.search) , onPressed: () {
            
          },
          ),
            new IconButton(icon:Icon(Icons.shopping_cart) , onPressed: () {
            
          },
          ),

        ],
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Bahri Othmen"),
              accountEmail: Text("othmeneb@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),),
                decoration: new BoxDecoration(
                  color: Colors.red,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home, color: Colors.red,),
                ),
              ),

               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My account"),
                  leading: Icon(Icons.person, color: Colors.red,),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("My Orders"),
                  leading: Icon(Icons.shopping_basket, color: Colors.red,),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("categories"),
                  leading: Icon(Icons.dashboard, color: Colors.red,),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("favouities"),
                  leading: Icon(Icons.favorite, color: Colors.red,),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, ),
                ),
              ),
               InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Colors.blue,),
                ),
              ),
              
          ],
        )
      ),
      body: new ListView(
        children: [
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0), child: new Text('Categories'),),
          HorizontalList(),
           new Padding(padding: const EdgeInsets.all(8.0), child: new Text('Recent products'),),

           Container(
             height: 320.0,
             child: Products(),
           )

        ],
      ),
      
    );
  }
}