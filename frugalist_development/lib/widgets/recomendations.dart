import 'package:flutter/material.dart';
import 'circleButton.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleButton(
                buttonFile: "chicken",
                search: "Pollo",
              ),
              CircleButton(
                buttonFile: "milk",
                search: "Leche en polvo",
              ),
              CircleButton(
                buttonFile: "fish",
                search: "Pescado",
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleButton(
                buttonFile: "eggs",
                search: "Huevo",
              ),
              CircleButton(
                buttonFile: "carrot",
                search: "Zanahoria",
              ),
              CircleButton(
                buttonFile: "apple",
                search: "Manzana",
              ),
            ],
          ),
        ],
      ),
    );
  }
}