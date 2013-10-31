
void setup() {
  size (640, 480); 
  noStroke();
}

void draw() {
  background (0);
  makeCircle(330, 250, 80); 
  makeCircle(200, 70, 30);
  makeCircle(500, 399, 60);
}

void makeCircle(int locX, int locY, int diam) {
  fill (255); 
  ellipse (locX, locY, diam, diam); 
  textAlign (CENTER); 
  text ("circle", width/2, height/2 + 40);
}

