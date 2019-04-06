import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Container(
                          width: 180,                          
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 15),
                          child: 
                            Text(
                              "¿Qué producto quieres buscar?",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 40,
                                height: 1.1,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                        Container(
                          width: 180,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Mérida, Yucatán",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff49FE5B)
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                    Container(
                      width: 300,                  
                      padding: EdgeInsets.only(top: 15),
                      child: TextField(                    
                        decoration: InputDecoration(
                          hintText: "Busca"
                        ),
                      ),
                    ),

                    Container(
                          width: 180,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "¿Qué te gusta?",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff49FE5B)
                            ),
                          ),
                        ),
                    
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
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,                      
                            children: <Widget>[
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),
                              FloatingActionButton(
                                backgroundColor: Colors.white30,
                                elevation: 1,

                              ),                              
                            ],                            
                          ),
                        ],
                      ),
                    )                                        
                  ],
            ),
        ),         
      ),
    );
  }
}


