import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'searched_item.dart';
import './widgets/shoppingCartButton.dart';
import './widgets/mainTitle.dart';
import './widgets/subtitle.dart';
import './widgets/recomendations.dart';

import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:image/image.dart' as img;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  File imageFile;
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  static const baseUrl = "http://192.168.0.3:8082";
  var _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[MainTitle(), ShoppingCartButton()],
                  ),
                  Subtitle(text: "Mérida, Yucatán"),
                ],
              ),
              Container(
                width: 300,
                height: 50,
                padding: EdgeInsets.only(top: 15),
                child: TextField(
                  controller: _textController,
                  onEditingComplete: () {
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
                        child: GestureDetector(
                          child: Image.asset(
                            'assets/photo-camera.png',
                            width: 20,
                            color: Colors.black26,
                          ),
                          onTap: () {
                            _takePhoto();
                            _uploadImage(_textController);
                          },
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Subtitle(text: "¿Qué te gusta?"),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 100,
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Recomendations(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnack(String text) {
    print(text);
  }

  void _takePhoto() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  void _uploadImage(TextEditingController _controller) async {
    if (imageFile == null) {
      return _showSnack("Please select a image");
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Center(
            child: new CircularProgressIndicator(),
          );
        },
        barrierDismissible: false);

    try {
      final url = Uri.parse('$baseUrl/upload');
      final imgFile = path.basename(imageFile.path);
      final bytes = await compute(compress, imageFile.readAsBytesSync());

      var request = http.MultipartRequest('POST', url)
        ..files.add(new http.MultipartFile.fromBytes('image', bytes,
            filename: imgFile));

      var send = await request.send();
      var decode = await send.stream.bytesToString().then(json.decode);

      if (send.statusCode == HttpStatus.ok) {
        _controller.text = decode['path'];
        var route = new MaterialPageRoute(
          builder: (BuildContext context) =>
              new ItemList(data: _controller.text),
        );
        Navigator.of(context).push(route);
      } else {
        Navigator.pop(context);
        _showSnack("image no uploaded / ${decode['message']}");
      }
    } catch (e) {
      _showSnack("ERROR");
    }
  }
}

List<int> compress(List<int> bytes) {
  var image = img.decodeImage(bytes);
  var rezise = img.copyResize(image, 480);
  return img.encodePng(rezise);
}
