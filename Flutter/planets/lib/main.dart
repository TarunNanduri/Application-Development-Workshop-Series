import 'package:flutter/material.dart';

void main() {
  runApp(Planets());
}
List<String> planetNames=[
  "Mercury",
  "Venus",
  "Earth",
  "Mars",
  "Jupiter",
  "Saturn",
  "Uranus",
  "Neptune"
];
List<String> urls=[
  "http://www.ancientpages.com/wp-content/uploads/2018/12/elusivemercury00.jpg",
  "https://i.ytimg.com/vi/zRUbktzp67M/maxresdefault.jpg",
  "http://2.bp.blogspot.com/-XzK5q09jPMA/Tjjmf0HUfFI/AAAAAAAAALA/sumh9tRAsLU/s1600/Earth.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/220px-OSIRIS_Mars_true_color.jpg",
  "https://3.bp.blogspot.com/-JzB2ruOjBOs/WJy8tR_tJSI/AAAAAAAABdA/26gANOQ4Y4IZyMnEGS2L8X-dvhVhGL0ZQCLcB/s1600/jupiter_HD.jpg",
  "https://www.seriousfacts.com/wp-content/uploads/2019/02/The-spacecraft-first-visited-the-planet-in-1979..jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/1200px-Uranus2.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/1200px-Uranus2.jpg"
];
class Planets extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text("Planets",style: TextStyle(color: Colors.black),),
          ),
          body: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: List.generate(8, (index) => getMeGridCell(urls[index], planetNames[index])),
          )),
    );
  }

  Widget getMeGridCell(String url, String name) {
    return Column(
      children: [
        Image.network(
          url,
          height: 100,
          width: 100,
        ),
        Text(name,style: TextStyle(fontFamily: "Segoe UI"),),
      ],
    );
  }
}
