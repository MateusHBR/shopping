import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/components/category/category_widget.dart';
import 'package:my_shopping/app/modules/home/components/item/item_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Shoes"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategoryWidget(),
          Container(
            padding: EdgeInsets.only(top: 16),
            height: size.height * 0.82,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.only(top: 10),
              children: <Widget>[
                ItemWidget(
                  color: Colors.red,
                  image: 'assets/images/nike1.png',
                ),
                ItemWidget(
                  color: Colors.blue,
                  image: 'assets/images/nike2.jpg',
                ),
                ItemWidget(
                  color: Colors.grey[350],
                  image: 'assets/images/nike4.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
