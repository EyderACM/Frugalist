import 'package:flutter/material.dart';

class SecondaryTitle extends StatefulWidget {
  final String title;
  final double height;
  @override
  _SecondaryTitleState createState() => _SecondaryTitleState();
  const SecondaryTitle({Key key, this.title, this.height}) : super(key: key);
}

class _SecondaryTitleState extends State<SecondaryTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 300,
          height: widget.height,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "${widget.title}",
            textAlign: TextAlign.left,
            style:
                TextStyle(fontSize: 40, height: 1, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}