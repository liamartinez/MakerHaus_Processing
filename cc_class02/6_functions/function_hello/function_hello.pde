

void setup () {
  size (400, 400);
}

void draw() {
  background (0); 
  greeting("holla", 20, 20, 100); 
  greeting("bye", 60, 80, 200); 
  greeting("yoohoo", 80, 100, 80); 
  greeting("good night", 15, 150, 20);
}

void greeting(String word, int size, int x, int y) {
  fill (255); 
  textAlign (CENTER); 
  textSize (size); 
  text (word, x, y); 
  println (word);
}



