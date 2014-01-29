int numCircles = 20; 

void setup() {
size (300, 300); 
  for (int i =0; i < numCircles; i++) {
    ellipse (random (0, width), random (0, height), random (20, 30), random (20, 30)); 
  }
}

void draw() {
  //background (0); 

}
