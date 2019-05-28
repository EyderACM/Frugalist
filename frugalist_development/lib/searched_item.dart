import 'package:flutter/material.dart';
import './widgets/backArrow.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import './widgets/card.dart';
import './widgets/notFoundAlert.dart';
import './widgets/title.dart';

class ItemList extends StatefulWidget {
  final String data;

  ItemList({Key key, this.data}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  Future<List<Item>> _getItems() async {
    //This isn't a safety option to send params.
    String url =
        'https://supermarket-scrapper.herokuapp.com/search/total/${widget.data.toUpperCase()}';

    http.Response itemData = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "LECHEapplication/json"});

    if (itemData.statusCode != 200) {
      throw Exception('Failed to fetch data');
    }

    var jsonData = json.decode(itemData.body);
    List<Item> items = [];
    for (var i in jsonData) {
      Item item = Item(
          i["presentacion"], i["precio"], i["cadenaComercial"], i["imagen"]);
      items.add(item);
    }
    return items;
  }

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
              Arrow(),
              SecondaryTitle(title: widget.data, height: double.parse('100')),
              FutureBuilder(
                future: _getItems(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                        child: Center(
                      child: CircularProgressIndicator(),
                    ));
                  } else if (snapshot.data.isEmpty) {
                    return NotFound();
                  }
                  return Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemCard(
                              product: snapshot.data[index].producto,
                              image: snapshot.data[index].image,
                              supermarket: snapshot.data[index].cadenaComercial,
                              price: snapshot.data[index].precio);
                        }),
                  );
                },
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
