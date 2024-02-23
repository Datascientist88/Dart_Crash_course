void main() {
  var planets={1:'mercury'};
  print(planets);
  Map<int,String> planet={
 1:"mercury",
 2:"venus",
 3:"earth",
 4:"mars"
  };
  print(planet);
  print(planet[2]);
  // to update the value
  // to add a new one
  planet[5]="jupiter";
  print(planet);
  print(planet.keys);
  // remove a value:
  print(planet.remove(4));
  print(planet);

}