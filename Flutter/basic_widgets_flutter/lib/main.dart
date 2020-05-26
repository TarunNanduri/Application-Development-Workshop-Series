import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 30),
                Icon(Icons.add_circle_outline),
                Icon(Icons.person)
              ],
            ),
          ),
          drawer: Icon(Icons.menu),
          appBar: AppBar(
            title: Text("Basic Widgets"),
            actions: [Icon(Icons.ac_unit)],
          ),
          body: StatefulButton()),
    );
  }
}

class StatefulButton extends StatefulWidget {
  _StatefulButtonstate createState() => _StatefulButtonstate();
}

class _StatefulButtonstate extends State<StatefulButton> {
  bool _isPressed = false;
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 2)),
        child: Image.asset("wallpaper.jpg"),
        padding: EdgeInsets.all(50),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _isPressed = !_isPressed;
              });
            },
            icon: _isPressed
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(Icons.favorite_border),
          ),
          IconButton(
            icon: Icon(Icons.comment),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      //Text("This picture",textAlign: TextAlign.start,style: TextStyle(fontSize: 30),)
    ]);
  }
}
