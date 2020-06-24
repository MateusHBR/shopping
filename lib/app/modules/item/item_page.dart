import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_shopping/app/modules/home/home_controller.dart';
import 'package:my_shopping/app/modules/item/components/tenis_size/box_tenis_size.dart';
import 'item_controller.dart';
import './components/bar/bar_widget.dart';

class ItemPage extends StatefulWidget {
  final int index;

  const ItemPage({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends ModularState<ItemPage, ItemController> {
  //use 'controller' variable to access controller
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var item = homeController.productList[widget.index];
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item.image),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: BarWidget(
                  functionFavorite: () {
                    setState(() {
                      homeController.toggleFavorite(item: item);
                    });
                  },
                  favoriteItem: item.isFavorite,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 18,
                      top: 5,
                      left: 5,
                    ),
                    child: Text(
                      'Sneakers',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      top: 5,
                      left: 5,
                    ),
                    child: Text(
                      'Size',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.7,
                    padding: EdgeInsets.only(
                      bottom: 30,
                      top: 5,
                      left: 5,
                    ),
                    child: Observer(
                      builder: (_) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            BoxTenisSize(
                              text: '${controller.tenisSize[0]}',
                              tColor: controller.selectedSize == 0
                                  ? Colors.black
                                  : Colors.white,
                              color: controller.selectedSize == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              function: () {
                                controller.changeSelected(0);
                              },
                            ),
                            BoxTenisSize(
                              text: '${controller.tenisSize[1]}',
                              tColor: controller.selectedSize == 1
                                  ? Colors.black
                                  : Colors.white,
                              color: controller.selectedSize == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              function: () {
                                controller.changeSelected(1);
                              },
                            ),
                            BoxTenisSize(
                              text: '${controller.tenisSize[2]}',
                              tColor: controller.selectedSize == 2
                                  ? Colors.black
                                  : Colors.white,
                              color: controller.selectedSize == 2
                                  ? Colors.white
                                  : Colors.transparent,
                              function: () {
                                controller.changeSelected(2);
                              },
                            ),
                            BoxTenisSize(
                              text: '${controller.tenisSize[3]}',
                              tColor: controller.selectedSize == 3
                                  ? Colors.black
                                  : Colors.white,
                              color: controller.selectedSize == 3
                                  ? Colors.white
                                  : Colors.transparent,
                              function: () {
                                controller.changeSelected(3);
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    height: size.height * 0.07,
                    margin: EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      color: Colors.white,
                      child: Text(
                        'Comprar',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      onPressed: () {
                        homeController.addInCart(item);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
