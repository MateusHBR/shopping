import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/components/category/category_widget.dart';
import 'package:my_shopping/app/modules/home/components/item/item_widget.dart';
import 'package:my_shopping/app/shared/models/item_model.dart';
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
    // var size = MediaQuery.of(context).size;

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
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {
              Modular.to.pushNamed('/cart');
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategoryWidget(),
          Expanded(
            child: Container(
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Container(
                    padding: EdgeInsets.only(top: 16),
                    height: constraints.maxHeight,
                    width: constraints.maxWidth,
                    child: Observer(
                      builder: (_) {
                        return ListView.builder(
                          padding: EdgeInsets.only(top: 10),
                          itemCount: controller.productList.length,
                          itemBuilder: (BuildContext context, int index) {
                            ItemModel item = controller.productList[index];
                            return InkWell(
                              onTap: () {
                                Modular.to.pushNamed(
                                  '/item',
                                  arguments: index,
                                );
                              },
                              child: ItemWidget(
                                item: item,
                                index: index,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
