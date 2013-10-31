
Ball b; 

void setup() {
  size (640, 480); 
  b = new Ball (width/2, height/2, 30); 
}

void draw() {
  background (0); 
  if (b.isMouseOver()) {
    b.displaySq(); 
  } else {
    b.displayCircle(); 
  }
  

}

void keyPressed() {
  b.changeColor (color(int (random (255)), int (random (255)),int (random (255)))); 
}

