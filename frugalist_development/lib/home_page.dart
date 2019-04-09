import 'package:flutter/material.dart';
import 'searched_item.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
              padding: EdgeInsets.all(25),
              constraints: BoxConstraints.expand(),
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,              
                  children: <Widget>[    
                    Column(                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Titulo(),
                        Subtitulo(texto: "Mérida, Yucatán"),                                                
                      ],
                    ),
                    
                    Container(
                      width: 300,           
                      height: 50,       
                      padding: EdgeInsets.only(top: 15),
                      child: TextField(
                        controller: _textController,
                        onEditingComplete: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => 
                              new ItemList(data: _textController.text),
                            );
                          Navigator.of(context).push(route);
                        },
                        decoration: InputDecoration(
                          hintText: "Busca",                          
                          suffixIcon: FlatButton(
                            onPressed: null,
                            padding: EdgeInsets.only(left: 30),
                            child: Image.asset('assets/photo-camera.png', width: 20, color: Colors.black26,),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Subtitulo(texto: "¿Qué te gusta?"),
                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      width: 100,
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                      
                            children: <Widget>[
                              // Aquí deberían estar los botones        
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                      
                            children: <Widget>[
                              // Aquí deberían ir más botones                                                          
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
            ),
        ),         
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 180,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 15),
      child: 
        Text(
          "¿Qué producto quieres buscar?",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 35,
            height: 1.1,
            fontWeight: FontWeight.bold
          ),
        ),
    );
  }
}

class Subtitulo extends StatefulWidget {
  final String texto;

  const Subtitulo({Key key, this.texto}): super(key: key);

  @override
  _SubtituloState createState() => _SubtituloState();
}

class _SubtituloState extends State<Subtitulo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20),
      child: Text(
        widget.texto,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff49FE5B)
        ),
      ),
    );
  }
}



