void main() {
var noodles=MenuItem("veg noodles", 99.9);
var pizza =MenuItem("piza",12.5);
// inheritance
var piza=Pizza(["meshroom","peppers"],"veg Volcano",12.55);
var foods=Collection<MenuItem>("Food Items",[noodles,piza,pizza]);
var random=foods.randomItem();
print(random);
print(piza);
print(piza.format());
print(noodles.title);
print(noodles.price);
print(pizza.title);
print(pizza.price);
print(noodles.format());
print(pizza.format());
}
class MenuItem{
  String title;
  double price;
  // constructor 
  MenuItem(this.title ,this.price);
  
String format(){
  return "$title ---> $price";
}
@override
String toString(){
  return format();
}

}
// Class Inheritance 
class Pizza extends MenuItem{
  List<String> toppings;
  Pizza(this.toppings,super.title ,super.price);
  // method overriding 
  @override
  String format(){
  var formattedToppings="Contains:";
  for (final t in toppings){
    formattedToppings="$formattedToppings $t";

  } return "$title -->$price \n$formattedToppings";
  }
@override
String toString(){
  return 'Instance of Pizza:$title ,$price,$toppings';
}

}
//Generics:
class Collection<T>{
  String name;
  List data;
  Collection(this.name,this.data);
 T randomItem(){
    data.shuffle();
    return data[0];
  }
}