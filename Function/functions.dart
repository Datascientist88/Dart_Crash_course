import 'dart:math';
void main() {
  List<double> cashFlows=[150000,147000,178000];
  double initialCost=17800;
  double discountRate=0.12;
  print(calculateNPV(cashFlows, initialCost, discountRate));
  print(computeDcf(cashFlows, discountRate));
 print(" The Net present Values is ${computeDcf(cashFlows, discountRate)-initialCost}");
 print("This is the named parameters version:${computeDcff(cashFlows: cashFlows, discountRate: discountRate)}");
}
double calculateNPV(List<double> cashFlows,double initialCost,double discountRate){
  double npv=-initialCost;
  for (int i=0;i<cashFlows.length;i++){
    npv+=cashFlows[i]/pow(1+discountRate,i+1);
   
  } return npv;
}
 exponentials(num,po){
  var res= pow( num,  po);
  return res;
}
double computeDcf(List<double>cashFlows, double discountRate){
 double dcf=0;
  for (double cashFlow in cashFlows){
    dcf+= cashFlow/pow(1+discountRate,cashFlows.indexOf(cashFlow)+1);
   
  } return dcf;
}
String greet(String name , int age){
  return "Hi my name is $name and I am $age";
}
// name parameters/arguments 
double computeDcff({required List<double>cashFlows, required discountRate}){
 double dcf=0;
  for (double cashFlow in cashFlows){
    dcf+= cashFlow/pow(1+discountRate,cashFlows.indexOf(cashFlow)+1);
   
  } return dcf;
}