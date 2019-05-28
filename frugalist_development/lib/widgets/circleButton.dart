import 'package:flutter/material.dart';
import '../searched_item.dart';

class CircleButton extends StatefulWidget {
  final String buttonFile, search;

  const CircleButton({Key key, this.buttonFile, this.search}) : super(key: key);

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var route = new MaterialPageRoute(
          builder: (BuildContext context) => new ItemList(data: widget.search),
        );
        Navigator.of(context).push(route);
      },
      child: new Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(18.0),
        decoration:
            new BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Image.asset(
          'assets/${widget.buttonFile}.png',
          color: Colors.black54,
          width: 150,
          height: 100,
        ),
      ),
    );
  }
}