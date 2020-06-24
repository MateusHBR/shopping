import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/home_controller.dart';
import 'cart_controller.dart';

class CartPage extends StatefulWidget {
  final String title;
  const CartPage({Key key, this.title = "Cart"}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ModularState<CartPage, CartController> {
  //use 'controller' variable to access controller
  var homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Observer(
        builder: (_) {
          return homeController.inCart.length == 0
              ? Container(
                  height: size.height,
                  width: size.width,
                  child: Center(
                    child: Text(
                      'Você não tem produtos no carrinho =\'(',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: homeController.inCart.length,
                  itemBuilder: (context, index) {
                    var item = homeController.inCart[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(item.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(item.title),
                        subtitle: Text(item.subtitle),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            homeController.removeInCart(index);
                          },
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
