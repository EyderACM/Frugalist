
#### Widgets
* #### backArrow.dart

```Dart
class Arrow extends StatelessWidget {
  const Arrow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: () {
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
    );
  }
}
```

Creates an arrow that sends the user back to the starting view of the application.
* Input: Context of the item
* Processing: Creates a link between the current view and the `home_page.dart` view
* Output: Displays and arrow with the required function.
<br>

* #### card.dart

```Dart
class ItemCard extends StatefulWidget {
  final String product, price, image, supermarket;
  const ItemCard({Key key, this.product, this.price, this.image, this.supermarket})
      : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.product),
      contentPadding: EdgeInsets.only(bottom: 10, right: 10),
      trailing: Text(
        widget.price,
        style: TextStyle(color: Color(0xff49FE5B), fontSize: 15),
      ),
      leading: InkWell(
        child: new Container(
          height: 45,
          child: Image.network(
            widget.image,
            fit: BoxFit.cover,
            width: 50,
            height: 50,
          ),
        ),
      ),
      subtitle: Text(widget.supermarket),
    );
  }
```

Card, generates a card that can be showned to the user to display the searched products.
* Input: `productName`, `productPrice`, `productImage`, `productSupermarket`
* Processing: Places inputed data to create the layout of card
* Output: Generates card displays the a product's information
<br>

* #### circleButton.dart

```Dart
class CircleButton extends StatefulWidget {
  final String buttonFile, search;

  const CircleButton({Key key, this.buttonFile, this.search}) : super(key: key);

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var route = new MaterialPageRoute(
          builder: (BuildContext context) => new ItemList(data: widget.search),
        );
        Navigator.of(context).push(route);
      },
      child: new Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(18.0),
        decoration:
            new BoxDecoration(shape: BoxShape.circle, color: Colors.black12),
        child: Image.asset(
          'assets/${widget.buttonFile}.png',
          color: Colors.black54,
          width: 150,
          height: 100,
        ),
      ),
    );
  }
}
```

Generates a radial button that displays quick-access products to the user, this way, making it easier to see the prices of popular and common products.
* Input: `buttonFile`, `search`
* Processing: Uses `buttonFile` to select the image to display in the button. Uses search to determine which product should the button search for. 
* Output: A button with an image representing a certain item, that when pressed, searches for that item.

<br>

* #### mainTitle.dart

```Dart
class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 15),
      child: Text(
        "¿Qué producto quieres buscar?",
        textAlign: TextAlign.left,
        style:
            TextStyle(fontSize: 35, height: 1.1, fontWeight: FontWeight.bold),
      ),
    );
  }
}
```

Creates a text that represents a "title", used for main header in the system.
* Input: The context where it will be displayed
* Processing: Uses predetermined values to create a header.
* Output: A header with a predetermined text.

<br>

* #### notFoundAlert.dart

```Dart
class NotFound extends StatelessWidget {
  const NotFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'Item no encontrado',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black45),
            )
          ]),
    );
  }
}
```

Displays an alert when an item isn't available
* Input: The context where it will be displayed
* Processing: Creates a message when called
* Output: A message with the text "Item no encontrado".

<br>

* #### recommendations.dart

```Dart
class Recomendations extends StatelessWidget {
  const Recomendations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleButton(
                buttonFile: "chicken",
                search: "Pollo",
              ),
              CircleButton(
                buttonFile: "milk",
                search: "Leche en polvo",
              ),
              CircleButton(
                buttonFile: "fish",
                search: "Pescado",
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleButton(
                buttonFile: "eggs",
                search: "Huevo",
              ),
              CircleButton(
                buttonFile: "carrot",
                search: "Zanahoria",
              ),
              CircleButton(
                buttonFile: "apple",
                search: "Manzana",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
```

Displays a predetermined amount of `CircleButtons` with common items.
* Input: The context where it will be displayed
* Processing: Creates six CircleButtons with the data, chicken, milk, fish, eggs, carrot and apple
* Output: Six CircleButtons with common items.

<br>

* #### subtitle.dart

```Dart
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
```

Displays a text with predetermined values that represents a "subtitle" within the system.
* Input: The text to transform into a subtitle
* Processing: Uses the text inputed to created a personalized text
* Output: A personalized text that represents a "subtitle"

<br>

* #### title.dart

```Dart
class SecondaryTitle extends StatefulWidget {
  final String title;
  final double height;
  @override
  _SecondaryTitleState createState() => _SecondaryTitleState();
  const SecondaryTitle({Key key, this.title, this.height}) : super(key: key);
}

class _SecondaryTitleState extends State<SecondaryTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 300,
          height: widget.height,
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "${widget.title}",
            textAlign: TextAlign.left,
            style:
                TextStyle(fontSize: 40, height: 1, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
```

Displays a text with predetermined values that represents a "title" within the system.
* Input: The text to transform into a subtitle
* Processing: Uses the text inputed to created a personalized text
* Output: A personalized text that represents a "title"

<br>
<br>

#### Views
* #### home_page.dart
```Dart
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
```
Creates the main view of the system, where the user is able to search for a product using three methods, taking a picture, writing its name, or pressing on one of the quickaccess buttons
<br><br>
The `home_page.dart` also uses some functions for the processing of the image when this method is used to search for a product.
```Dart
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
```
This functions are used to compress the image, and interpred the data, then they are sent to tensorflow to interpred and obtain an text based on that image.

<br>

* #### main.dart

```Dart
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
```
A splash screen with a logo is showed to represent the loading process of the system.

<br>

* #### searched_item.dart

```Dart
class ItemList extends StatefulWidget {
  final String data;

  ItemList({Key key, this.data}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  Future<List<Item>> _getItems() async {
    String url =
        'https://supermarket-scrapper.herokuapp.com/search/total/${widget.data.toUpperCase()}';

    /// The data is obtained from a Json file
    http.Response itemData = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "LECHEapplication/json"});

    if (itemData.statusCode != 200) {
      throw Exception('Failed to fetch data');
    }
    
    var jsonData = json.decode(itemData.body);
    /// Each obtained item is stored in an array
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
                          /// Each item is made into a card                        
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

/// This is the mold class used to create each item.
class Item {
  final String producto;
  final String image;
  final String precio;
  final String cadenaComercial;

  Item(this.producto, this.precio, this.cadenaComercial, this.image);
}

```
In this view the searched item of the user is searched in the API developed to recognize three supermarket,
it obtains the values as a JSON file to then call `card.dart` to generate a card for each found item.
