/*Task 1: Pick a random number from an array
1.a Add the following array as a global variable: int[] arr = { 28, 230, 9, 310,72}
1.b. Write a method, getRandom() that returns a random element from the above array.
1.c Add a setup method, from where you will call getRandom().*/

//Global variabel
int[] arr = {28,230, 9, 310, 72};//1.a

//method
int getRandom(){
  int index = int(random(arr.length));//1.b Lav et random index 
  return arr[index];//1.c return tallet på det index fra numbers-arrayet
}

void setup (){
int randomNumber = getRandom(); //kalder metoden
println(randomNumber);//printer resultatet
}
