import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'Item no encontrado',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black45),
            )
          ]),
    );
  }
}