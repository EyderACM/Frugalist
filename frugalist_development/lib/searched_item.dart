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
    String url = 'https://api.datos.gob.mx/v1/profeco.precios?pageSize=25&estado=YUCATÁN&municipio=MÉRIDA&producto=${widget.data.toUpperCase()}';    
    http.Response itemData = await http.get(Uri.encodeFull(url), headers:{"Accept": "LECHEapplication/json"});
    
    if(itemData.statusCode != 200){
      throw Exception('Failed to fetch data');
    }

    var jsonData = json.decode(itemData.body)["results"];
    List<Item> items = [];    
    for(var i in jsonData){
    Item item = Item(i["_id"], i["presentacion"], i["precio"], i["cadenaComercial"]);
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,              
                  children: <Widget>[
                    Column(                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250, 
                          height: 150,                        
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 80),                        
                          child: 
                            Text(
                              "${widget.data}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 40,
                                height: 1,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                      ],
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
                        return Expanded(                  
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data.length,
                            itemBuilder: (BuildContext context, int index){              
                              return ListTile(
                                title: Text(snapshot.data[index].producto),                                                                
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                trailing: Text(
                                  snapshot.data[index].precio,
                                  style: TextStyle(
                                    color: Color(0xff49FE5B),
                                    fontSize: 15
                                    ),
                                  ),
                                subtitle: Text(snapshot.data[index].cadenaComercial),  
                              );
                            }
                          ),
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
  final String precio;
  final String cadenaComercial;

  Item(this.id, this.producto, this.precio, this.cadenaComercial);
}