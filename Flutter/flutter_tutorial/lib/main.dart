import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/card_widget.dart';

void main() {
  runApp(MyApp());
}

Map<String, bool> languages = {
  'C': false,
  'C++': false,
  'Dart': false,
  'Python': false,
  'Java': false,
  'Java Script': false,
  'Fortran': false
};
List<String> favorites = [];

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming Langauges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Segoe UI", brightness: Brightness.dark),
      home: LanguagePage(),
    );
  }
}

class LanguagePage extends StatefulWidget {
  LanguagePageState createState() => new LanguagePageState();
}

class LanguagePageState extends State<LanguagePage> {
  TextEditingController _controller = new TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.all_inclusive,
                    size: 24,
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite,
                    size: 24,
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                  ),
                )
              ],
            ),
            backgroundColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            title: Text("Programming Languages"),
            actions: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(Icons.add_circle_outline, size: 28),
                  onPressed: () {
                    addLanguage(context);
                  },
                ),
                padding: EdgeInsets.all(10),
              )
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: (context, i) {
                    String language = languages.keys.toList()[i];
                    bool isfavorite = languages[languages.keys.toList()[i]];
                    return CardWidget(
                        Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        language,
                        isfavorite);
                  }),
              ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: (context, i) {
                    String language = languages.keys.toList()[i];
                    bool isfavorite = languages[languages.keys.toList()[i]];
                    if (isfavorite == true) {
                      return CardWidget(
                          Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                          language,
                          isfavorite);
                    } else {
                      return SizedBox(
                        width: 0,
                        height: 0,
                      );
                    }
                  }),
            ],
          ),
        ));
  }

  void addLanguage(context) {
    var alert = AlertDialog(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)]),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      title: Text(
        'Add a Langauge',
        style: TextStyle(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
      ),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        )),
      ),
      actions: <Widget>[
        RaisedButton(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            _controller.text=_controller.text.trim();
            if (_controller.text!= "") {
              if (!languages.keys.toList().contains(_controller.text)) {
                setState(() {
                  languages[_controller.text] = false;
                  _controller.text = "";
                  Navigator.pop(context);
                });
              } else {
                _controller.text = "";
                Navigator.pop(context);
              }
            } else {
              _controller.text = "";
              Navigator.pop(context);
            }
          },
          child: Text(
            "Add Me.!",
            style: TextStyle(fontSize: 18),
          ),
        ),
        RaisedButton(
          onPressed: (){Navigator.pop(context);},
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text("Exit",style: TextStyle(fontSize: 18),),
        )
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
