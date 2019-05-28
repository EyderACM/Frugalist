import 'package:flutter/material.dart';
import './widgets/backArrow.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 15, right: 25, left: 25),
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 55,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Arrow(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 200,
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "Carrito de Compras",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 40,
                              height: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
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

class Item {
  final String producto;
  final String image;
  final String precio;
  final String cadenaComercial;

  Item(this.producto, this.precio, this.cadenaComercial, this.image);
}
