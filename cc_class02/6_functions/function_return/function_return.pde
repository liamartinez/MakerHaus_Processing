void setup() {
  size (640, 480);
}

void draw() {
  background (0); 
  int result = add (5, 10); 
  println (result); 

  String cheer = yellIt ("turtle"); 
  if (mousePressed) {
    text (cheer, width/2, height/2);
  }
}

int add(int num1, int num2) {
  return num1 + num2;
}

String yellIt(String word) {
  String yelledWord = word + "!!!!"; 
  return yelledWord;
}

