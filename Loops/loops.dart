void main() {
  for (int i=0;i<10;i++){
    print(i);
  }
 List<int> scores=[50,52,40,45,87];
 for (int i=0;i<scores.length;i++){
  print(scores[i]);
  for(int score in scores){
    if(score%2==0){
        print("the score is$score ");
    } else {
        print("the score is${score*2} ");
    }

  }

 }
 // the use of where method 
 List<int> nums=[55,405,711,21,45,200];
 for (var num in nums.where((element) => element%2==0 )){
  print(num);
 }
}