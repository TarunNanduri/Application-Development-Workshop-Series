import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegetableWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(children: [
      Image.network("https://zoom50.files.wordpress.com/2010/09/capsicum-annuum1.jpg"),
      Text("Capsicum"),
      RichText(
        text: TextSpan(children: [
          TextSpan(text: "Rs.",style:TextStyle(color: Colors.red)),
          TextSpan(text: "25.00",style:TextStyle(color: Colors.black)),
          TextSpan(text: "(per kg)",style:TextStyle(color: Colors.green,fontWeight: FontWeight.bold
          ))
        ]),
      ),
    ],);
  }
}