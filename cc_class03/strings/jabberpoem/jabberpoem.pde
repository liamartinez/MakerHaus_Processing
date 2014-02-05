String[] poem; 
String[] words;

String [] poetry = new String [10];

boolean ready = false; 
void setup() {
  size (200, 400); 
  poem = loadStrings ("jabberwocky.txt");
  words = split (poem[0], " "); 
  for (int i =0; i < words.length; i++) {
    println (words[i]);
  }
}

void draw() {
  background (0); 
  if (ready == true) {
  for (int i = 0; i < poetry.length; i++) {
   text (poetry[i], 50, 30*i + 30);
   }
  }
}

int wordCount (String theWord, String[] theText) {
  int counter = 0; 
  for (int i = 0; i < theText.length; i++) {
    if (theWord.equals(theText[i])) {
      counter ++;
    }
  }
  return counter;
}

String[] randomPoemGenerator(String[] poem, int total) { //first argument is the number of random nums that you want, second is the total of all the words to choose from

  String [] newPoem = new String [total]; 
  for (int i = 0; i < total; i++) {
    newPoem[i] = poem[(int) random (0, poem.length)];
  }

  return newPoem;
}

void mousePressed() {
  ready = true; 
  poetry = randomPoemGenerator (words, 10); 
}

