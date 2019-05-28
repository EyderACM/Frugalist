import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Image.asset(
            'assets/frugalistLogo.png',
            width: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Frugalist',
            style: TextStyle(
                fontSize: 30,
                color: Color(0xff4CFF5E),
                fontWeight: FontWeight.w600),
          )
        ])));
  }
}
