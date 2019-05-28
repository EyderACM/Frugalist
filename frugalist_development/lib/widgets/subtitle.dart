import 'package:flutter/material.dart';

class Subtitle extends StatefulWidget {
  final String text;

  const Subtitle({Key key, this.text}) : super(key: key);

  @override
  _SubtitleState createState() => _SubtitleState();
}

class _SubtitleState extends State<Subtitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 20),
      child: Text(
        widget.text,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff49FE5B)),
      ),
    );
  }
}