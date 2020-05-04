import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart';

class CardWidget extends StatefulWidget {
  final Color color;
  final String language;
  final bool _isfavorite;
  CardWidget(this.color, this.language, this._isfavorite);
  _CardWidgetState createState() =>
      new _CardWidgetState(this.color, this.language, this._isfavorite);
}

class _CardWidgetState extends State<CardWidget> {
  final Color color;
  final String language;
  bool _isfavorite;
  _CardWidgetState(this.color, this.language, this._isfavorite);
  Widget build(BuildContext context) {
    return Card(
        color: color,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                language,
                style: TextStyle(fontSize: 24),
              ),
              padding: EdgeInsets.all(50),
            ),
            _isfavorite
                ? IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {
                      setState(() {
                        languages[language] = !_isfavorite;
                        _isfavorite = !_isfavorite;
                      });
                    },
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                  )
                : IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        languages[language] = !_isfavorite;
                        _isfavorite = !_isfavorite;
                      });
                    },
                  )
          ],
        ));
  }
}
