
ArrayList <Ball> balls; 

void setup() {
  size (640, 480); 
  noStroke(); 

  balls = new ArrayList<Ball>();  // Create an empty ArrayList
  balls.add(new Ball(width/2, 0, 48));  // Start by adding one element
}

void draw() {
  background (0); 


  for (int i = 0; i < balls.size(); i++) {
    Ball thisBall = balls.get(i); 
    thisBall.displayCircle(); 
    thisBall.bounce();
    
    if (thisBall.isDead()) {
      balls.remove(i); 
    }
    
  }
}

void keyPressed() {
  //b.changeColor (color(int (random (255)), int (random (255)),int (random (255))));
}

void mousePressed() {
  // A new ball object is added to the ArrayList, by default to the end.
  balls.add(new Ball(mouseX, mouseY, (int)random (30, 50)));
}

