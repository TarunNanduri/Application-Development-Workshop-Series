/* 
Built-in types in Dart:

* numbers:
  * int
  * double

  int and double are subtypes of num
* strings
* booleans
* lists (also known as arrays)
* sets
* maps
* runes (for expressing Unicode characters in a string)
* symbols

*/
main(){
  int number=0;
  print(number);
  double pi=3.14;
  print(pi);
  String name="Tarun";
  print(name);
  bool isHelpful=true;
  print(isHelpful);
  List<int> feedback=[5,4,3,5,3,4,5];
  print(feedback);
  Set<int> feedbackSet=feedback.toSet();
  print(feedbackSet);
  Map<String,dynamic> comment={"X":"Valuable session","Y":"Can improve a bit","Z":"Yeah loved it.Need more"};
  print(comment);
  var rune="\u2665";
  print(rune);
  print(#number);
}