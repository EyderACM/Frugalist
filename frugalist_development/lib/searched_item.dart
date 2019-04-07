import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemList extends StatefulWidget {
  final String data;

  ItemList({Key key, this.data}) : super (key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {  
  Future<List<Item>> _getItems() async {
    String url = 'https://api.datos.gob.mx/v1/profeco.precios?pageSize=25&estado=YUCATÁN&municipio=MÉRIDA&producto=JAMON';    
    http.Response itemData = await http.get(Uri.encodeFull(url), headers:{"Accept": "application/json"});

    if(itemData.statusCode != 200){
      throw Exception('Failed to fetch data');
    }

    var jsonData = json.decode(itemData.body)["results"];
    List<Item> items = [];    
    for(var i in jsonData){
      Item item = Item(i["_id"], i["producto"], i["precio"]);
      items.add(item);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
              padding: EdgeInsets.all(25),
              constraints: BoxConstraints.expand(),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,              
                  children: <Widget>[
                    Column(                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 180,                          
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 15),
                          child: 
                            Text(
                              "${widget.data}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 40,
                                height: 1.1,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    FutureBuilder(
                      future: _getItems(),                      
                      builder: (BuildContext context, AsyncSnapshot snapshot) {

                        if(snapshot.data == null){                        
                          return Container(
                            child: Center(
                              child: CircularProgressIndicator(),
                            )
                          );
                        }
                        return ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index){
                            
                            return ListTile(
                              title: Text(snapshot.data[index].producto),
                            );
                          }
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
  final String id;
  final String producto;
  final double precio;

  Item(this.id, this.producto, this.precio);
}