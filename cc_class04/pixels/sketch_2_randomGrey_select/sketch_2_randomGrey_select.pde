void setup() {
  size (400, 400); 
}

void draw() {
  loadPixels();
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      if (x % 10 == 0) { //this affects every 10th column. Try a making a box area
      pixels [x+y*width] = color (random(255)); 
      }
    }
  }
  updatePixels(); 
}
