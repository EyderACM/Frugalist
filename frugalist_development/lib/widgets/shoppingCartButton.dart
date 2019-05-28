import 'package:flutter/material.dart';
import '../shoppingCart.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShoppingCart(),
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(right: 10, top: 25),
          child: Image.asset(
            'assets/shopping.png',
            color: Colors.black54,
            width: 20,
            height: 25,
          ),
        ),
      ),
    );
  }
}