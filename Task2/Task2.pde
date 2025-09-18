/*Task 2: print et udsnit af et ord
I denne opgave skal du bruge substring metoden fra klassen String. 
Substring metoden kan man bruge hvis man skal bruge et udsnit af en tekststreng. fx. 
de tre første bogstaver.(Læs om [substring metoden] 
(https://beginnersbook.com/2013/12/java-string-substring-method-example/).

2.a Lav en metode, printPartOfWord(), med tre parametre
ordet der skal findes et udsnit af.
start-index: tallet for det sted udsnittet skal starte
slut-index: tallet for det sted udsnittet skal slutte
Ex: argumenterne "København", 0 og 3 skal give outputtet "Køb".
2.b Kald metoden fra setup() med passende argumenter og se om den virker.
2.d Find ud af hvordan du skal ændre kaldet for at få de sidste 4 bogstaver i en hvilken som helst string.
2.e Tjek hvad der sker hvis man kalder metoden med negative værdier. Eller hvor start-index er højere end 
end slut index. Nu skal du sikre at metoden giver en passende besked, hvis man kommer 
til at kalde den med sådanne "forkerte" argumenter.*/

//--------------- Metoder --------------------

// 2.a: Udsnit af et ord
/*void printPartOfWord (String word, int start, int end){
  String part = word.substring(start, end);
  println(part);
}*/

//2.e: 2.a udvidet med if statement
void printPartOfWord (String word, int start, int end){
  if (start <0 || end > word.length() || start > end) {
    println("Ugyldige argumenter!");
  } else {
  String part = word.substring(start, end);
  println(part);
  }
}
  
// 2.d: Udskriv de sidste 4 bogstaver (eller hele ordet hvis <4)
void printLastFour (String word){
  if (word.length() >=4){ //Tag de sidste 4 bogstaver
  String part = word.substring(word.length()-4, word.length());
  println(part);
  } else {
  println (word);
  }
}

//--------------- Setup -----------------------

void setup() {
// 2.a + 2.b
  printPartOfWord("København", 0, 3);//printer "Køb"

// 2.d
  printLastFour("Odense");//printer ense
  printLastFour("Karamel");//printer amel
  printLastFour("Sol");//printer Sol

//2.e Test
 printPartOfWord("København", -2, 3);//Ugyldige argumenter!
 printPartOfWord("København", 0, 3);//Køb
 printPartOfWord("København", 4, 2);//Ugyldige argumenter!
 printPartOfWord("København", 0, 20);//Ugyldige argumenter!
}
