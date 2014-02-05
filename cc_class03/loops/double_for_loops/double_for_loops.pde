int step; 
int size; 
void setup() {
  size (800, 800);
  noStroke(); 
  step = 30;
}

void draw() {
  background(0);
  size = mouseX/20;
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      ellipse (i*step, j*step, size, size);
    }
  }
}

