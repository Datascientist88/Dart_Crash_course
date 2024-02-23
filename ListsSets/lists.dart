void main() {
  var scores =[50,25,44,100];
  print(scores.runtimeType);
  scores[0]=102;
  print(scores[0]);
  scores.add(205);
  print(scores);
  scores.removeAt(0);
  print(scores);
  scores.shuffle();
  print(scores);
  print(scores.indexOf(44));
  for (int score in scores ){
    print("this element is :$score and its index :${scores.indexOf(score)}");
      
  }
  // map method
 var res= scores.map((e) => e/2);
 print(res);
 
/// Sets:
   var names={"mo","joe","Ramzy"};
   print(names);
   print(names.runtimeType);
// explicitely name the type
Set<String> name={"mo","joe","Ramzy"};
print(name);
  
   
}