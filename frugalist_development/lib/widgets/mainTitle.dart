import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 15),
      child: Text(
        "¿Qué producto quieres buscar?",
        textAlign: TextAlign.left,
        style:
            TextStyle(fontSize: 35, height: 1.1, fontWeight: FontWeight.bold),
      ),
    );
  }
}