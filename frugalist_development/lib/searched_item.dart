import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  final String data;

  ItemList({Key key, this.data}) : super (key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Text("${widget.data}"),
    );
  }
}