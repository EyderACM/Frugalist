import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'home_page.dart';
import 'dart:convert';

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
      Item item =
          Item(i["presentacion"], i["precio"], i["cadenaComercial"], i["imagen"]);
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: ()  {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                      },
                    child: new Container(
                      child: Image.asset(
                        'assets/returnArrow.png',
                        color: Colors.black,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 100,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "${widget.data}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40, height: 1, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              FutureBuilder(
                future: _getItems(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                        child: Center(
                      child: CircularProgressIndicator(),
                    ));
                  } else if (snapshot.data.isEmpty) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Item no encontrado',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, color: Colors.black45),
                          )
                        ]);
                  }
                  return Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(                            
                            title: Text(snapshot.data[index].producto),
                            contentPadding: EdgeInsets.only(
                                bottom: 10, right: 10),
                            trailing: Text(
                              snapshot.data[index].precio,
                              style: TextStyle(
                                  color: Color(0xff49FE5B), fontSize: 15),
                            ),
                            leading: InkWell(
                              child: new Container(
                                height: 45,                                
                                child: Image.network(
                                  snapshot.data[index].image,
                                  fit: BoxFit.cover,
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            subtitle:
                                Text(snapshot.data[index].cadenaComercial),
                          );
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
