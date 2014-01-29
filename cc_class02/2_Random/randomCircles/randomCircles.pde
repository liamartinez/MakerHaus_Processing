void setup () {
  size (400, 400);
  noStroke(); 
    background (0); 
    for (int i = 0; i < 1000; i++ ) {
    ellipse (random (0, width), random (0, height), random (0, 20), random (0, 20));  
  }
}

void draw() {


}
